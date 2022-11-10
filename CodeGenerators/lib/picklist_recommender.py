import re, sys
from sqlalchemy import func, create_engine
import pandas as pd
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from difflib import SequenceMatcher
from lib.utils import generate_id
#sw=stopwords.words('english')
#ps=PorterStemmer()  

class picklist_recommender():
    def __init__(self, connstr):  
        self.connstr = connstr 
        self.recommend_result={}
        self.input_list=[]
        self.cache={}
        self.df = self._sqltodf("""
        SELECT PK_Picklist, PK_PicklistType, UsageField, DisplayValue from vwPicklists
        """, connstr) 

    def recommend(self, input_list, threshhold=.825, reject=.5, usecosine_sim=False): 
        self.input_list=input_list
        df = self.df 
        dmx=df.loc[len(df)-1, ['PK_Picklist','PK_PicklistType']].to_dict()    
        df = df.groupby(['PK_PicklistType','UsageField'], as_index = False).agg({'DisplayValue': ' '.join, 'PK_Picklist':max})
        df['MAX_PK_Picklist']= dmx['PK_Picklist']    
        df['MAX_PK_PicklistType']= dmx['PK_PicklistType']    
        input=self.normalize(''.join(input_list))

        for i,r in df.iterrows(): 
            x=self.normalize(r['DisplayValue'])
            sequence_match = SequenceMatcher(None, x,input).ratio() 
            df.at[i,'agg_simscore'] = sequence_match   
            df.at[i,'sequence_match_score'] = sequence_match    
            if df.at[i,'agg_simscore'] > threshhold: 
                self.recommend_result=df.iloc[i].to_dict()
                return self.recommend_result
            if usecosine_sim:        
                vectorizer = TfidfVectorizer()
                X = vectorizer.fit_transform([x,input])  
                cosine_sim = cosine_similarity(X, X)  
                cosine_sim = cosine_sim[0][1] 
                df.at[i,'cosine_sim_score'] = cosine_sim   
                if cosine_sim > threshhold:
                    df.at[i,'agg_simscore']=( df.at[i,'agg_simscore']+cosine_sim+.01 ) / 2
                    self.recommend_result=df.iloc[i].to_dict()
                    return self.recommend_result
        
        df=df.sort_values(by='agg_simscore', ascending=False, inplace=False)   
        self.recommend_result=df.iloc[0].to_dict()
        if self.recommend_result['agg_simscore'] < reject:
            self.recommend_result['PK_PicklistType']=0         
            self.recommend_result['UsageField']=0         
            self.recommend_result['DisplayValue']=input         
        return self.recommend_result 

    def get_script(self, PLTPK=0 ): 
        d=self.recommend_result 
        if 'MAX_PK_Picklist' not in self.cache.keys():
            self.cache['MAX_PK_Picklist']=d['MAX_PK_Picklist'] 
        if 'MAX_PK_PicklistType' not in self.cache.keys():
            self.cache['MAX_PK_PicklistType']=d['MAX_PK_PicklistType']         
        if PLTPK==0: 
            self.cache['MAX_PK_PicklistType']=self.cache['MAX_PK_PicklistType']+2
            PLTPK=self.cache['MAX_PK_PicklistType']
        l=[i for i in self.input_list if i.strip() != ''] 
        s=''
        for i, t in enumerate(l):
            self.cache['MAX_PK_Picklist']=self.cache['MAX_PK_Picklist']+1
            t=t.replace("'","`")
            s=s+f",({self.cache['MAX_PK_Picklist']}, {PLTPK}, {i+1}, '{generate_id(t)}', '{t}')\n"
        s='(PK_PickList,PK_PicklistType,SortOrder,UsageCode,DisplayValue)\nVALUES\n '+s[1:]
        self.cache['MAX_PK_Picklist']=self.cache['MAX_PK_Picklist']+10
        return s[:]   

    def _sqltodf(self, query, connstr):
        df=pd.DataFrame() 
        engine = create_engine(connstr) 
        conn = engine.connect() 
        try: 
            df = pd.read_sql(query,con=conn) 
        finally: 
            conn.close()
        return df  

    def normalize(self,s):  
        s = re.sub('[^A-Za-z0-9\s]',' ',s).upper().strip()
        s = re.sub('\s{1,5}',' ',s) 
        return s        
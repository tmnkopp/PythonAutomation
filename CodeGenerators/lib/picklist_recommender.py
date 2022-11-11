import re, sys, json, pickle, os
from sqlalchemy import func, create_engine
import pandas as pd
import numpy as np
from os.path import exists
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from difflib import SequenceMatcher
from lib.utils import generate_id
#sw=stopwords.words('english')
#ps=PorterStemmer()  
class NpEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.integer):
            return int(obj)
        if isinstance(obj, np.floating):
            return float(obj)
        if isinstance(obj, np.ndarray):
            return obj.tolist()
            return json.JSONEncoder.default(self, obj)              
class picklist_recommender():
    def __init__(self, connstr, use_cache=True, reset_cache=False):  
        self.connstr = connstr 
        self.use_cache = use_cache 
        self.reset_cache = reset_cache 
        self.recommend_result={}
        self.input_list=[]
        self.cache=self.load_cache()
        self.df = self._sqltodf("""
        SELECT PK_Picklist, PK_PicklistType, UsageField, DisplayValue from vwPicklists
        """, connstr) 

    def recommend(self, input_list, threshhold=(.825, .5)): 
        self.input_list=input_list
        df = self.df 
        dmx=df.loc[len(df)-1, ['PK_Picklist','PK_PicklistType']].to_dict()    
        df = df.groupby(['PK_PicklistType','UsageField'], as_index = False).agg({'DisplayValue': ' '.join, 'PK_Picklist':max})
        df['MAX_PK_Picklist']= int(dmx['PK_Picklist'])     
        df['MAX_PK_PicklistType']= int(dmx['PK_PicklistType'])  

        input=self.normalize(''.join(input_list))
        if self._get_cache(input) != None and self.use_cache:
            return self._get_cache(input)
        
        for i,r in df.iterrows(): 
            txt_test=self.normalize(r['DisplayValue']) 
            sequence_match = SequenceMatcher(None, txt_test,input).ratio() 
            df.at[i,'simscore'] = sequence_match 
            if df.at[i,'simscore'] > threshhold[0]: 
                self.recommend_result=df.iloc[i].to_dict()
                self._append_cache(input, self.recommend_result)
                return self.recommend_result
  
        df=df.sort_values(by='simscore', ascending=False, inplace=False)   
        self.recommend_result=df.iloc[0].to_dict()
        if self.recommend_result['simscore'] < threshhold[1]:
            self.recommend_result['PK_PicklistType']=int(0)         
            self.recommend_result['UsageField']=int(0)             
            self.recommend_result['DisplayValue']=input  
               
        self._append_cache(input, self.recommend_result)    
        return self.recommend_result 
    
    def _append_cache(self, k, d):
        k=self._ckey(k)
        if k not in self.cache.keys():
            self.cache[k]=d
    def _get_cache(self, k):
        k=self._ckey(k)
        if k in self.cache.keys():
            return self.cache[k]    

    def to_cache(self, fname='cache.json'):
        with open(os.path.dirname(os.path.realpath(__file__))+'\\'+fname, 'w') as f:
            json.dump(self.cache, f, cls=NpEncoder)

    def load_cache(self, fname='cache.json'):
        dir=os.path.dirname(os.path.realpath(__file__))+'\\'+fname
        if not exists(dir) or self.reset_cache:
            return {}
        with open(dir, 'r') as f:
            return json.load(f)

    def get_script(self, PLTPK=0): 
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

    def _ckey(self,s): 
        s = re.sub('[^A-Za-z0-9]','',s).upper().strip() 
        if len(s) > 100: s = re.sub('[AER]','',s) 
        if len(s) > 100: s = re.sub('[IOT]','',s) 
        if len(s) > 100: s = re.sub('[NSL]','',s)
        if len(s) > 100: s = s[:80] + s[-20:]
        return s[:100]

    def normalize(self,s):  
        s = re.sub('[^A-Za-z0-9\s]',' ',s).upper().strip()
        s = re.sub('\s{1,5}',' ',s) 
        return s  


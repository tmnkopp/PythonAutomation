import re, sys,json
from sqlalchemy import func, create_engine
import pandas as pd
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from difflib import SequenceMatcher
sw=stopwords.words('english')
ps=PorterStemmer()  

def get_question_type(s, ctx, default=1, usecache=False):  
    if not usecache: 
        df=sql_todf("""SELECT PK_QuestionTypeId, Code ,description FROM fsma_QuestionTypes
                        WHERE Code IN ('YN','CNT','YNA','TXT','PICK','LABEL','FREQ','DEC','INSTRUCTION','MULTICHECKBOX')
        """, ctx.config['connstr']) 
        df.to_csv(f'{ctx.get_dest()}get_question_type.csv', index=False)
     
    df=pd.read_csv(f'{ctx.get_dest()}get_question_type.csv')
    lod=df.to_dict(orient='records') 

    if re.search('How Many|Number of',s,re.IGNORECASE): 
        return lod[1]

    for i in lod:
        reg=re.sub('[^A-Z]','',i['Code'].upper()) +'|'+re.sub('[^A-Z]','',i['description'].upper())
        nrm=re.sub('[^A-Z]','',s.upper()) 
        if re.search(reg,nrm,re.IGNORECASE): 
            return i  
    return lod[1]

def generate_id(t, limit=15): 
    if type(t) == list: 
        t=str(t)
    t = ' '.join([w for w in t.split(' ') if w not in sw])
    t = ' '.join([ps.stem(w) for w in t.split(' ')]) 
    t = re.sub('[^A-Za-z0-9]', ' ', t )   
    t = t.upper().strip()
    t = re.sub('\s+', '_', t).replace('__','_')
    try:
        if t[0].isnumeric():
            t = 'N_'+ t
    except:
        pass  
    if len(t) > limit+5:
        t=t[:limit-5]+t[len(t)-5:]
    else:
        t=t[:limit]
    return t
def range_extractor(s):
    range=s.strip()  
    m=re.search('(\d+):(\d+)',range)
    mn=0
    mx=999
    if m.groups(0)[0]!='':
        mn=m.groups(0)[0]
    if m.groups(0)[1]!='':
        mx=m.groups(0)[1]   
    return int(mn),int(mx) 
def df_to_sql(dff, ctx, template_name='fsma_QuestionsInsert.sql', out_script='script'):
    df=dff
    df=df.astype(str)
    df.reset_index(inplace=True)    
    with open (ctx.get_tempalte_dir()+template_name, 'r') as f:
        df['sql']=f.read()   
    for i,r in df.iterrows():
        for c in df.columns:   
            df.loc[i,'sql']= re.sub(str(c),str(df.loc[i,c]),str(df.loc[i,'sql']))  
    sql='\n,'.join(df['sql'])
    with open(f'{ctx.get_dest()}{out_script}', 'w') as f:
        f.write(sql)
    return sql  

def sql_todf(query,connstr):
    config = {}
    with open('config.json', 'r') as f: 
        config=json.loads(f.read())  
    connstr=config['connstr']
    df=pd.DataFrame() 
    engine = create_engine(connstr) 
    conn = engine.connect() 
    try: 
        df = pd.read_sql(query,con=conn) 
    finally: 
        conn.close()
    return df    

def normalize(s):  
    s = re.sub('[^A-Za-z0-9\s]',' ',s).upper().strip()
    s = re.sub('\s{1,5}',' ',s) 
    return s
    
def shorten(s):
    if type(s) == str:
        if len(s) > 25:
            return s[:25]+'...'
    return s
import re, sys
from sqlalchemy import func, create_engine
import pandas as pd
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
sw=stopwords.words('english')
ps=PorterStemmer() 
  
def sql_todf(query,connstr):
    df=pd.DataFrame() 
    engine = create_engine(connstr) 
    conn = engine.connect() 
    try: 
        df = pd.read_sql(query,con=conn) 
    finally: 
        conn.close()
    return df
def apply_indexes(d, ctx):
    indexes=ctx.config['indexes'] 
    for j,e in enumerate(indexes):
        field=e['field'] 
        if 'gap_on' in e.keys():
            if 'gap_on_pval' not in e.keys(): e['gap_on_pval']=d[e['gap_on']]  
            if d[e['gap_on']] != e['gap_on_pval']:
                e['gap_on_pval']=d[e['gap_on']]
                e['index']=e['index']+9
        if 'reset_on' in e.keys(): 
            if 'reset_on_pval' not in e.keys(): e['reset_on_pval']=d[e['reset_on']] 
            if d[e['reset_on']] != e['reset_on_pval']:
                e['reset_on_pval']=d[e['reset_on']]
                e['index']=1
        e['index']=e['index']+1  
        ctx.config['indexes'][j]=e
        d[field]=e['index']-1
    return d
def generate_id(t, limit=15): 
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
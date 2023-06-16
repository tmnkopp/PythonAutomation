import re, sys,json
from sqlalchemy import func, create_engine
import pandas as pd
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from difflib import SequenceMatcher
from lib.script_generator import script_generator 
sw=stopwords.words('english')
ps=PorterStemmer()  
 
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
def normalize_var(s):  
    s = re.sub('[^A-Za-z0-9]','',s.strip()) 
    return s    
def shorten(s):
    if type(s) == str:
        if len(s) > 25:
            return s[:25]+'...'
    return s

def govt_encoding(s, length=10):
    ps = PorterStemmer() 
    s = ''.join([ps.stem(w) for w in s.split(' ') if w not in sw]) 
    s=s.upper().strip() 
    s=re.sub('[^A-Z0-9]','',s)
    if len(s) > length:
        s=re.sub('[AEI]','',s)
    if len(s) > length:
        s=re.sub('[OU]','',s)
    if len(s) > length:
        s=re.sub('[RST]','',s)
    if len(s) > length:
        s=re.sub('[LN]','',s)
    if len(s) > length:
        s=s[:length-2]+s[2:]
    return s[:length]
 
def write_excel(filename,sheetname,dataframe):
    with pd.ExcelWriter(filename, engine='openpyxl', mode='a') as writer: 
        workBook = writer.book
        try:
            workBook.remove(workBook[sheetname])
        except:
            print("Worksheet does not exist")
        finally:
            dataframe.to_excel(writer, sheet_name=sheetname,index=False)
            writer.save()
def alphanum_sort( l ):  
    convert = lambda text: int(text) if text.isdigit() else text 
    alphanum_key = lambda key: [ convert(c) for c in re.split('([0-9]+)', key) ] 
    return sorted(l, key = alphanum_key)

def sort_df_alphanum(df, col):
    dff=df.copy()
    dff.set_index(col, inplace=True)   
    l=alphanum_sort( dff.index )    
    dff=dff.reindex(l).reset_index()     
    return dff

def get_avail_pk(start, sql="SELECT DISTINCT PK_Question FROM vwQuestions WHERE PK_Question > 30000"):
    config = {}
    with open('config.json', 'r') as f: 
        config=json.loads(f.read())    
    keys=set(range(start, start+1000)) 
    lst=sql_todf(sql, config['connstr']).to_dict(orient='records')          
    used_keys=set(d['PK_Question'] for d in lst) 
    keys=list(keys-used_keys)
    for k in keys:
        yield k

def SQL_INSERT_FROM_DF(SOURCE, TABLE_NAME='@T', Print=False):
    cols = [f'{c} INT NULL' if 'INT' in str(SOURCE[c].dtype).upper() else f'{c} NVARCHAR(4000) NULL' for c in SOURCE.columns ]
    sql_texts = []
    temp_table=f"--DECLARE {TABLE_NAME} AS TABLE ({', '.join(cols)})"
 
    sql_create = """
    DROP TABLE {TABLE};
    IF NOT EXISTS (SELECT * FROM sysobjects WHERE NAME = '{TABLE}' AND TYPE = 'U')
    BEGIN
        CREATE TABLE [dbo].{TABLE}  (
        [PK_{TABLE}] [INT] IDENTITY(1,1) NOT NULL
        , {cols} 
        );
    END
    """
    sql_create=sql_create.replace('{TABLE}',TABLE_NAME).replace('{cols}' , '\n\t\t, '.join(cols) ) 
  
    for index, row in SOURCE.iterrows():       
        sql_texts.append('INSERT INTO '+TABLE_NAME+' ('+ str(', '.join(SOURCE.columns))+ ') VALUES '+ str(tuple(row.values)))     
    if Print:
        print(';\n'.join(sql_texts))       
    return sql_texts, sql_create, temp_table      
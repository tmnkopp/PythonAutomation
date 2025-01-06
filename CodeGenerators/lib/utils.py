import re, sys,json , random
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

config = {}
with open('config.json', 'r') as f: 
    config=json.loads(f.read())  
connstr=config['connstr']
 

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
    except Exception as e:
        print(e)
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
    columns =  SOURCE.columns
    cols = [f'[{c}] INT NULL' if 'INT' in str(SOURCE[c].dtype).upper() else f'[{c}] NVARCHAR(4000) NULL' for c in columns ]
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
        sql_texts.append('INSERT INTO '+TABLE_NAME+' ('+ str(', '.join(columns))+ ') VALUES '+ str(tuple(row.values)))     
    if Print:
        print(';\n'.join(sql_texts))       
    return sql_texts, sql_create, temp_table      


def to_proper(s):
    n=''
    for i in range(len(s[:-1])):  
        n=n+s[i]
        if ord(s[i]) > 96 and ord(s[i+1]) < 97: n=n+ ' '
    return n+s[-1]    
        
def normalize_if_df(df):
    df.drop( columns=[c for c in df.columns if '__' in c ] , inplace=True )   
    cols = list(df) 
    if 'PK_PICKLISTTYPE' not in cols: df['PK_PICKLISTTYPE'] = 0
    if 'HEADER' not in cols: df['HEADER'] = df['COLUMN_NAME'].apply(to_proper)
    if 'DATA_TYPE' not in cols: df['DATA_TYPE'] = 'NVARCHAR'
    if 'CHARACTER_MAXIMUM_LENGTH' not in cols: df['CHARACTER_MAXIMUM_LENGTH'] = 4000
    df['DATA_TYPE']=df['DATA_TYPE'].str.upper()  
    df['CHARACTER_MAXIMUM_LENGTH']=df['CHARACTER_MAXIMUM_LENGTH'].fillna(0).astype(int)
    df['PK_PICKLISTTYPE']=df['PK_PICKLISTTYPE'].fillna(0).astype(int)
    df['CHARACTER_MAXIMUM_LENGTH']=df['CHARACTER_MAXIMUM_LENGTH'].apply(lambda s: 4000 if s < 0 else s )
    df['DT'] = ''
    for i,r in df.iterrows():
        if 'VARCHAR' in r['DATA_TYPE']:
            df.loc[i, 'DT'] = df.loc[i, 'COLUMN_NAME'] + f" NVARCHAR({ df.loc[i, 'CHARACTER_MAXIMUM_LENGTH'] }) "
        else:
            df.loc[i, 'DT'] = f"{df.loc[i, 'COLUMN_NAME']} {df.loc[i, 'DATA_TYPE']} "
    df[cols] = df[cols].astype(str) 
    df=df.loc[:, ['COLUMN_NAME','DATA_TYPE','CHARACTER_MAXIMUM_LENGTH','HEADER', 'PK_PICKLISTTYPE', 'DT' ]]
    return df

def df_fromDataFields(path): 
    lst=[]
    cols=[]
    with open(path, 'r') as f:   
        g=re.search("<DataFields>(.*)<\/Data", f.read(), flags=re.DOTALL)    
        lst=g.groups(0)[0].split('<CB:DataField')[1:] 
        for l in lst:
            COLUMN_NAME = re.search('DBColumnName="(\w+)"\s', l ).groups(0)[0]
            d={'COLUMN_NAME':COLUMN_NAME}
            d['HEADER']=COLUMN_NAME
            if 'ImportColumnName' in l: 
                d['HEADER']=re.search('ImportColumnName="([^"]+)"\s', l ).groups(0)[0] 
            PK_PICKLISTTYPE = re.search('PickListTypeID="([0-9]+)"\s', l )
            if PK_PICKLISTTYPE: 
                d['PK_PICKLISTTYPE'] = PK_PICKLISTTYPE.groups(0)[0]
            
            cols.append(d)
    return normalize_if_df(pd.DataFrame(cols))


def get_randomDisplayValue(PK_PICKLISTTYPE):
    config = {}
    with open('config.json', 'r') as f: 
        config=json.loads(f.read())  
    connstr=config['connstr']
    pk = sql_todf("SELECT DisplayValue, PK_Picklist,PK_PickListType FROM vwPicklists  ", connstr)
    DisplayValues = list(pk.loc[ pk["PK_PickListType"] ==int(PK_PICKLISTTYPE)  ]['DisplayValue'])  
    return random.choice(DisplayValues)


def components():
    components = sql_todf(""" 
    SELECT A.PK_Component AGENCY_PK, A.Component AS AGENCY, CONVERT(INT, b.PK_Component) AS Bureau_PK , b.Component AS Bureau 
    FROM [Component List] A 
    INNER JOIN [Component List] B ON B.FK_PK_Component=A.PK_Component AND B.IsActive = 1 
    WHERE A.IsActive = 1 AND A.FK_PK_Component IS NULL AND A.PK_Component < 200
    ORDER BY AGENCY_PK ASC
    """, connstr)
    components['Bureau_PK']=components['Bureau_PK'].fillna(0).astype(int) 
    return components

def rand_component(): 
    components = components()
    component = components.iloc[random.randint(0,len(components))]
    return component
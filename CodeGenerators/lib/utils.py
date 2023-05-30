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

def get_question_type(s, ctx, default=1, usecache=False):  
    if not usecache: 
        df=sql_todf("""SELECT PK_QuestionTypeId, Code ,description FROM fsma_QuestionTypes
                        WHERE Code IN ('YN','CNT','YNA','TXT','PICK','LABEL','FREQ','DEC','INSTRUCTION','MULTICHECKBOX')
        """, ctx.config['connstr']) 
        df.to_csv(f'{ctx.get_dest()}get_question_type.csv', index=False)
     
    df=pd.read_csv(f'{ctx.get_dest()}get_question_type.csv')
    lod=df.to_dict(orient='records') 

    if re.search('does your|does the',s,re.IGNORECASE): 
        return lod[0]
    if re.search('How Many|Number of|Numeric',s,re.IGNORECASE): 
        return lod[1]
    if re.search('if other',s,re.IGNORECASE): 
        return lod[3]
    if re.search('maturity level',s,re.IGNORECASE): 
        return lod[4]
    if re.search('select all that apply',s,re.IGNORECASE): 
        return lod[9]
    
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

def generate_code_from_db(ctx, qgroup=None):

    if qgroup == None:
        qgroup = input()  
    sql="""
        SELECT DISTINCT
          QID [{idt}]
        , ID as [id]
        , Q_TypeCode [{CTRLCODE}]  
        , FK_QuestionType [{FK_QuestionType}]  
        , PK_Question as [{PK_Question}]
        , CONVERT(NVARCHAR(9), PK_PickListType) as [{PK_PickListType}]
        , sortpos [{sortpos}]
        , QTEXT as [{QuestionText}]  
        , LEFT(QTEXT, 75) AS [{QT_ABBR}]
		,   CASE WHEN required_value IS NULL THEN '' 
			ELSE
			'data-question_master="r-m-'+REPLACE(master_identifier_text,'.','_')+'" data-value_torequire="^'+required_value+'$"'
			END AS [{Dependancy}]
        FROM vwQuestionFormDependancies Q
    """+ f"  WHERE PK_QuestionGroup={qgroup} ORDER BY SortPos; " 
    ctx.logger.info(f'{sql}')
    df=sql_todf(sql, ctx.connstr)  
    df['{idt}']=df['{idt}'].apply(lambda s: re.sub('_$','',s))
    df.astype({'{PK_PickListType}': 'str'})
    gen=script_generator(ctx)
    code=gen.generate(df) 
    return df, code    


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
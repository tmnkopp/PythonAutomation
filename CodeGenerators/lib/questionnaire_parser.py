import re, json,  os.path
import pandas as pd  
from lib.utils import *
from lib.picklist_recommender import picklist_recommender
class questionnaire_parser():
    def __init__(self, ctx):  
        self.ctx = ctx  
    def parse(self):    
        converts={'Selections':lambda x: re.sub('\d{,2}\.','',x)}
        df=pd.read_excel(self.ctx.config['source'], converters=converts, sheet_name=int(self.ctx.config['sheet']), header=30, usecols='A,B,D').fillna(method='ffill').reset_index()
        df=df.groupby(['ID','Question'], as_index=False).agg({'Selections': list, 'index': 'min'})
        df=df.sort_values('index').reset_index(drop=True).drop('index', axis=1) 
        df['CTRLCODE']=[self._get_datatype(s) for s in zip(df['ID'], df['Question'], df['Selections'])] 
        
        pr = picklist_recommender(self.ctx.config['connstr']) 
        df['PLT']=df['Selections'].apply(lambda x: pr.recommend(x)['PK_PicklistType'] ) 
        pr.to_cache()

        qt=sql_todf("SELECT PK_QuestionTypeId AS PK_QTID, code AS CTRLCODE FROM fsma_QuestionTypes", self.ctx.config['connstr'])
        
        df=pd.merge(df, qt, how='left', left_on='CTRLCODE', right_on='CTRLCODE') 
        df['index']=range(1, len(df) + 1)
        return df
 
    def _get_datatype(self, t): 
        id,quest,sel=t
        if re.search('Integer',''.join(sel)) : return 'CNT' 
        if len(sel) < 2  : return 'TXT'
        if re.search(self.ctx.config['chkbox_pattern'],''.join(id)) : return 'MULTICHECKBOX'
        return 'PICK'        
     
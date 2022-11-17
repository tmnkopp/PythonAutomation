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
        df['DATATYPE']=df['ID']
        df['DATATYPE']=[self._get_datatype(s) for s in zip(df['ID'], df['Selections'])] 
        pr = picklist_recommender(self.ctx.config['connstr']) 
        df['PLT']=df['Selections'].apply(lambda x: pr.recommend(x)['PK_PicklistType'] ) 
        pr.to_cache()

        return df
 
    def _get_datatype(self, t): 
        id,sel=t
        if re.search('Integer',''.join(sel)) : return 'INT' 
        if len(sel) < 2  : return 'TXT'
        if re.search(self.ctx.config['chkbox_pattern'],''.join(id)) : return 'MULTICHECKBOX'
        return 'PICK'        
     
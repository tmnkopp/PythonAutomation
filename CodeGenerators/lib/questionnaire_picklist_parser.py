import re, json, openpyxl 
import pandas as pd 
from openpyxl import Workbook 
from lib.utils import *
from lib.picklist_recommender import picklist_recommender   
class questionnaire_picklist_parser():
    def __init__(self, ctx):  
        self.ctx = ctx
        self.source = self.ctx.config['source']
        self.sheet = self.ctx.config['sheet']
    def parse(self):
        wb = openpyxl.load_workbook(filename = self.source)   
        ws = wb.worksheets[int(self.sheet)]
        id, lst='',[] 
        for i,c in enumerate(ws['A']): 
            if c.value != None:
                if re.search(r'(CQ\d.*)',c.value,flags=re.I): 
                    id=c.value   
            if id!='' and ws[f'D{i+1}'].value is not None:
                d={ 'ID':id, 'TEXT':ws[f'D{i+1}'].value, 'CODE':generate_id( ws[f'D{i+1}'].value)  }   
                lst.append(d)  

        pr = picklist_recommender(self.ctx.config['connstr'])
       
        ld=pd.DataFrame(lst).groupby('ID', as_index = False).agg({'TEXT': '\n'.join }).to_dict('records') 
        for d in ld:
            d['PLT']=pr.recommend(d['TEXT'].split('\n'))['PK_PicklistType']  
        
        pr.to_cache()

        pd.DataFrame(ld).to_json(f'{self.ctx.get_dest()}\parsed.json', orient='records')
        df=pd.merge(pd.DataFrame(lst), pd.DataFrame(ld).loc[:, ['ID', 'PLT']], on='ID')   
 
        return df 
 
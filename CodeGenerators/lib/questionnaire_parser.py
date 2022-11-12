import re, json, openpyxl, os.path
import pandas as pd 
from openpyxl import Workbook  
from lib.utils import *
from lib.picklist_recommender import picklist_recommender
class questionnaire_parser():
    def __init__(self, ctx):  
        self.ctx = ctx
        self.source = self.ctx.config['source']
        self.sheet = self.ctx.config['sheet']
        self._rows = []
        self._wb = openpyxl.load_workbook(filename = self.source) 
        self._ws = self._wb.worksheets[int(self.sheet)]   
   
    def parse(self):  
        for irow ,acell in enumerate(self._ws['A']):  
            if acell.value != None:
                if re.search(r'(CQ\d.*)', acell.value, flags=re.I): 
                    d={} 
                    d['DATATYPE']=self._get_ftype(irow+1)
                    d['ID']=self._ws[f'A{irow+1}'].value
                    d['TEXT']=self._ws[f'B{irow+1}'].value 
                    d['PLT']=[self._ws[f'D{irow+1}'].value] 
                    self._rows.append(d) 
            else: 
                if len(self._rows) > 0 and self._ws[f'D{irow+1}'].value != None:
                    self._rows[len(self._rows)-1]['PLT'].append(self._ws[f'D{irow+1}'].value)
  
        pr = picklist_recommender(self.ctx.config['connstr']) 
        for i,d in enumerate(self._rows): 
            d['PLT']=pr.recommend(d['PLT'])['PK_PicklistType']    
        pr.to_cache()
 
        return pd.DataFrame(self._rows)
 
    def _get_ftype(self, irow): 
        t='PICK' 
        if self._ws[f'D{irow}'].value is not None: 
            if re.search(r'.*free text',self._ws[f'D{irow}'].value ,flags=re.I): 
                t='TXT'  
        return t   

    def _requires_other(self, row):
        requires_other=False  
        for i in range(100):
            a=self._ws[f'A{row+i}'].value
            if a != None:
                if re.search(r'(CQ\d.*)', a, flags=re.I): 
                    return requires_other 
            dcell=self._ws[f'D{row+i}']
            if dcell.value is not None: 
                if re.search(r'.*other.+(free.+text)?',dcell.value ,flags=re.I):
                    requires_other=True
        return requires_other 
 
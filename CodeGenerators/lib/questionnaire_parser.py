import re, json, openpyxl 
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
        self._ws = {}
    def parse(self):
        pr = picklist_recommender(self.ctx.config['connstr'])
        wb = openpyxl.load_workbook(filename = self.source)
        if self.ctx.args['verbose']: print(wb.sheetnames)
        if self.sheet == '': self.sheet=2
        self._ws = wb.worksheets[int(self.sheet)]   
        for irow ,acell in enumerate(self._ws['A']):  
            if acell.value  != None:
                if re.search(r'(CQ\d.*)', acell.value, flags=re.I): 
                    d={}
                    d['ROW']=len(self._rows)+1
                    d['DATATYPE']=self._get_ftype(irow+1)
                    d['ID']=self._ws[f'A{irow+1}'].value
                    d['TEXT']=self._ws[f'B{irow+1}'].value     
                    d['PLT']=[self._ws[f'D{irow+1}'].value]
                    self._rows.append(d)
                    if self._requires_other(irow) == True:
                        o={}
                        o['ROW']=len(self._rows)+1
                        o['DATATYPE']='TXT'
                        o['ID']=d['ID']+'.'+'1'
                        o['TEXT']='Other'
                        o['PLT']=[self._ws[f'D{irow+1}'].value] 
                        self._rows.append(o) 
            else: 
                if len(self._rows) > 0 and self._ws[f'D{irow+1}'].value != None:
                    self._rows[len(self._rows)-1]['PLT'].append(self._ws[f'D{irow+1}'].value)
 
        pd.DataFrame(self._rows).to_json(f'{self.ctx.get_dest()}\questionnaire_parser.json', orient='records') 

        recs={} 
        for d in self._rows: 
            PLT=''.join(d['PLT'])
            r=pr.recommend(d['PLT'], threshhold=.8, usecosine_sim=False) 
            if PLT not in recs.keys():
                recs[PLT]=0
            d['PLT']=0
            if 'int' in str(type(r['PK_PicklistType'])): 
                d['PLT']=r['PK_PicklistType']
                recs[PLT]=r['PK_PicklistType']

        pd.DataFrame([recs]).to_json(f'{self.ctx.get_dest()}\{wb.sheetnames[2]}_picklists.json', orient='records') 

        df=pd.DataFrame(self._rows)  
        return df 
    def _get_ftype(self, irow): 
        t='PICK'
        tval='' 
        if self._ws[f'D{irow}'].value is not None:
            tval=self._ws[f'D{irow}'].value  
        if re.search(r'.*free text',tval,flags=re.I): 
            if len(tval) < 14:
                t='TXT'
        if re.search(r'DATE',tval,flags=re.I):
            t='DATE'
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
 
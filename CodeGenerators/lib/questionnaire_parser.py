import re, json, openpyxl 
import pandas as pd 
from openpyxl import Workbook  
from lib.utils import *
class questionnaire_parser():
    def __init__(self, ctx):  
        self.ctx = ctx
        self.source = self.ctx.config['source']
        self.sheet = self.ctx.config['sheet']
    def parse(self):
        wb = openpyxl.load_workbook(filename = self.source)
        if self.ctx.args['verbose']: print(wb.sheetnames)
        if self.sheet == '': self.sheet=2
        ws = wb.worksheets[int(self.sheet)]
        lst=[]
        irow=1
        indexes=self.ctx.config['indexes'] 
        for i,r in enumerate(ws['A']): 
            a=r.value 
            if a != None:
                if re.search(r'(CQ\d.*)', a,  flags=re.I): 
                    d={}
                    d['Row']=irow 
                    d['DATATYPE']=self._get_ftype(ws, i+1)
                    d['ID']=a
                    d['Text']=ws[f'B{i+1}'].value   
                    d=apply_indexes(d, self.ctx)
                    lst.append(d)
                    irow=irow+1  
        df=pd.DataFrame(lst)  
        return df
    def _get_ftype(self, ws, irow):
        t='PICK'
        tval='' 
        if ws[f'D{irow}'].value is not None:
            tval=ws[f'D{irow}'].value  
        if re.search(r'.*free text',tval,flags=re.I): 
            if len(tval) < 14:
                t='TXT'
        if re.search(r'DATE',tval,flags=re.I):
            t='DATE'
        return t     
 
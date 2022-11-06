import re, json, openpyxl 
import pandas as pd 
from openpyxl import Workbook 
from lib.utils import *
class questionnaire_picklist_parser():
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
        id=''  
        irow=1
        for i,c in enumerate(ws['A']): 
            if c.value != None:
                if re.search(r'(CQ\d.*)',c.value,flags=re.I): 
                    id=c.value   
            if id!='' and ws[f'D{i+1}'].value is not None:
                d={}
                d['Row']=irow 
                d['ID']=id 
                d['Text']=ws[f'D{i+1}'].value
                d['Code']=generate_id(d['Text']) 
                d=apply_indexes(d, self.ctx)
                lst.append(d)  
                irow=irow+1  
        df=pd.DataFrame(lst)  
        return df 
 
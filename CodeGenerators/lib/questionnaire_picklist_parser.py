import re, json, openpyxl 
import pandas as pd 
from openpyxl import Workbook 
from lib.utils import *
from lib.picklist_recommender import picklist_recommender   
from lib.questionnaire_parser import questionnaire_parser   
class questionnaire_picklist_parser():
    def __init__(self, ctx):  
        self.ctx = ctx 
    def parse(self):
        p=questionnaire_parser(self.ctx)
        df=p.parse()
        df=df.explode('Selections')
        df['CODE']=df['Selections'].apply(generate_id)
        df=df.loc[df['PLT'] == 0]
        df=df.loc[df['DATATYPE'] == 'PICK'] 
        df=df.drop(['PLT','DATATYPE'], axis=1)
        return df 
 
import re, json 
import pandas as pd  
from lib.utils import *   
class dbupdate_parser():
    def __init__(self, ctx):  
        self.ctx = ctx 
    def parse(self, path=None): 
        if path==None:
            print('Enter Path:')
            path=input() 
        sql=''
        with open(path, 'r') as f:
            sql=f.read()
        questions=[]
        for line in sql.split('\n'):
            line=line.replace("''", "`")
            match=re.search("\((\d{5,6}),.*'([A-Za-z0-9\.]{0,8})'.*N'(.*)',", line)  
            if match:
                QuestionText=match.groups(1)[2].replace("`", "''")
                questions.append({'{PK_Question}': match.groups(1)[0],'{idt}': match.groups(1)[1], '{QuestionText}': QuestionText } ) 
        df=pd.DataFrame(questions)  
        return df 
 
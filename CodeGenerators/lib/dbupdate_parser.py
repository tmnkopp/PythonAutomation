import re, json 
import pandas as pd  
from lib.utils import *   
class dbupdate_parser():
    def __init__(self, ctx, path=None, verbose=False):  
        self.ctx = ctx  
        self.path = path
        self.contents = '' 
        self.nf = []
        self.verbose = verbose
        self.pk_form = None  
        if self.path==None:
            print('Enter Path:')
            self.path=input()  
        with open(self.path, 'r', encoding='unicode_escape') as file: 
            self.contents = file.read()
    def get_insert(self, id):
        m=re.search("(\d{5,6}).+("+id+").+N'(.{10,})'.*\n", self.contents)   
        if m != None:
            pk=m.groups(1)[0]
            id=m.groups(1)[1]
            qt=m.groups(1)[2] 
            return {'pk':pk,'id':id, 'qt':qt,'spos':m.start(),'epos':m.end(),'match': self.contents[m.start():m.end()] }
        else:
            print(f'{id} not found')
            self.nf.append(id)
        return None
  
    def update_question_text(self, id, txt):  
        insert=self.get_insert(id) 
        if insert != None: 
            old_insert=insert['match']
            new_insert=old_insert.replace(insert['qt'], txt)
            self.contents=self.contents.replace(insert['qt'], txt)
            if self.verbose:
                print(f'{insert["id"]} updated: {txt}') 
    def inspect(self):
        with open(ctx.get_dest() + '\\script.sql', 'w') as f:
            f.write(self.contents)
    def commit(self):
        with open(self.path, 'w', encoding='UTF-8') as file: 
            file.write(self.contents)  
    def parse(self):   
        m=re.search("'(\d{4}-\w{1,4}-\w{1,10})'", self.contents)
        if m != None:
            self.pk_form=m.groups(1)[0]  
        questions=[]
        for line in self.contents.split('\n'):
            line=line.replace("''", "`")
            match=re.search("(\d{5,6}).*'([A-Za-z0-9\.]{1,8})'.*N'(.*)'", line)  
            if match:
                QuestionText=match.groups(1)[2].replace("`", "''")
                questions.append({'{PK_Question}': match.groups(1)[0],'{idt}': match.groups(1)[1], '{QuestionText}': QuestionText } ) 
        df=pd.DataFrame(questions)   
        return df 
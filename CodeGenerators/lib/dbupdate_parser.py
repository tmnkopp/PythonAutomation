import re, json 
import pandas as pd  
import numpy as np 
from lib.utils import *   
from lib.script_generator import script_generator
class dbupdate_parser():
    def __init__(self, ctx, path=None, verbose=False):  
        self.ctx = ctx  
        self.path = path
        self.contents = '' 
        self.nf = []
        self.verbose = verbose
        self.pk_form = None  
        self.insert_stmt = ''
        self.df=pd.DataFrame()
        self.insert_statements = []
        if self.path==None:
            print('Enter Path:')
            self.path=input()  
        with open(self.path, 'r', encoding='unicode_escape') as file: 
            self.contents = file.read()

    def get_insert(self, id):  
        if 'ID' in self.df.columns:
            dff=self.df.loc[self.df['ID'] == id]
            if len(dff) > 0:
                return dff.iloc[0].to_dict()
        m=re.search("(\d{5,6}).+("+id+").+N'(.{10,})'.*\n", self.contents)   
        if m != None:
            pk=m.groups(1)[0]
            id=m.groups(1)[1]
            qt=m.groups(1)[2] 
            return {'PK_Question':pk,'identifier_text':id, 'QuestionText':qt,'span':(m.start(), m.end()),'stmt': self.contents[m.start():m.end()] }
        else:
            print(f'{id} not found')
            self.nf.append(id)
        return None
  
    def update_question_text(self, id, txt):  
        insert=self.get_insert(id) 
        if insert != None:  
            self.contents=self.contents.replace(insert['QuestionText'], txt)
            if self.verbose:
                print(f'{insert["id"]} updated: {txt}') 

    def inspect(self):
        with open(self.ctx.get_dest() + '\\script.sql', 'w') as f:
            f.write(self.contents)

    def commit(self):
        with open(self.path, 'w', encoding='UTF-8') as file: 
            file.write(self.contents) 
            
    def parse(self):   
        m=re.search("'(\d{4}-\w{1,4}-\w{1,10})'", self.contents)
        if m != None:
            self.pk_form=m.groups(1)[0]  
  
        spos = re.search('SET IDENTITY_INSERT.*fsma_Questions.*ON',self.contents, re.IGNORECASE)
        epos = re.search('SET IDENTITY_INSERT.*fsma_Questions.*OFF',self.contents, re.IGNORECASE)
        
        sql=self.contents[spos.span()[1]:epos.span()[0]] 
        
        items=[]
        for i,group in enumerate(re.split('INSERT INTO fsma_Questions', sql)):
             
            
            ins_group=group.replace("N''", "N' '").replace("''", "`") 
            insert_fields = re.search('\((.+)\)',ins_group, re.IGNORECASE)  
            if insert_fields == None:
                continue
            insert_fields = re.sub('\s|\(|\)','',insert_fields.groups(0)[0]).split(',')
              
            temp=ins_group
            while True:
                g=re.search("'(.*?)'", temp, flags=re.DOTALL) 
                if g == None:
                    break  
                capture=g.groups(0)[0] 
                if len(capture) > 1: 
                    replaced=capture.replace(')', '~cparen~').replace(',', '~comma~').replace('\n', '~newline~')
                    ins_group=ins_group.replace(capture, replaced )   
                              
                temp=temp[g.span()[1]:]
 
            temp=ins_group
            while True:
                g=re.search("\((\d{5,6},.*?)\)+?", temp, flags=re.DOTALL) 
                if g == None:
                    break 
                temp=temp[g.span()[1]:]
        
                insert_values=g.groups(0)[0].split(',')
                pairs = list(zip(insert_fields, insert_values))
                d = {k:v.replace('~cparen~',')').replace('~comma~',',').replace('~newline~','\n').strip() for (k,v) in pairs }
                d['section']=i 
                d['insert_fields']=( ','.join(insert_fields), insert_fields )
                if 'identifier_text' in d:  d['identifier_text']=d['identifier_text'].replace('N\'','').replace('\'','')
                d['QuestionText']=d['QuestionText'].replace('N\'','').replace('\'','')
                d['help_text']=d['help_text'].replace('N\'','').replace('\'','')
                d['ID']=d['identifier_text']
                items.append(d)

        df=pd.DataFrame(items)    
        df=df.fillna(' NULL') 
        df['index']=df['ID']
        df.set_index('index', inplace=True)
        self.df=df 
        return df 
     
    def to_sql(self, df=None): 
        if df == None:
            df=self.df
        section=0
        sql=''
        for i,r in df.iterrows():  
            fields=r['insert_fields'][0]
            if section != r['section']: 
                section=r['section'] 
                sql=f'{sql}\n\nINSERT INTO fsma_Questions({ r["insert_fields"][0] }) VALUES'
 
            for c in df.columns: 
                if type(r[c]) != tuple: 
                    val=str(r[c])
                    if re.search('text$',c, re.IGNORECASE):
                        val=f"N'{val}'"
                    fields=fields.replace(c, val) 
            sql=f'{sql}\n,({fields})' 
        sql=sql.replace('VALUES\n,(','VALUES\n (')
        return sql 
    
    def _insert_preprocess(self, s):  
        s=s.replace("N''", "N' '")
        s=s.replace("''", "`")   
        s=re.sub('\t','',s)     
        idx = re.search('(INSERT\s{1,}INTO\s{1,}fsma_Questions)',s, re.IGNORECASE)
        temp=s[idx.span()[0]: ] 
        while True:
            g=re.search("'(.*?)'", temp, flags=re.DOTALL) 
            if g == None:
                break 
            s=s.replace(g.groups(0)[0], g.groups(0)[0].replace('\n','') )
            temp=temp[g.span()[1]:] 
        
        idx = re.search('(INSERT\s{1,}INTO\s{1,}fsma_Questions)',s, re.IGNORECASE)
        spos=idx.span()[0]  
        return '\n'+s[spos: ]
 
    def insert_values(sql):  
        idx = re.search('(INSERT\s{1,}INTO\s{1,}fsma_Questions)',sql, re.IGNORECASE)
        sql=sql[idx.span()[0]: ] 
        sql=sql.replace("N''", "N' '")
        sql=sql.replace("''", "`")   
        sql=re.sub('\t','',sql)     
        temp=sql
        while True:
            g=re.search("'(.*?)'", temp, flags=re.DOTALL) 
            if g == None:
                break 
            sql=sql.replace(g.groups(0)[0], g.groups(0)[0].replace('\n', '~newline~') )
            sql=sql.replace(g.groups(0)[0], g.groups(0)[0].replace(')', '~cparen~') )
            sql=sql.replace(g.groups(0)[0], g.groups(0)[0].replace(',', '~comma~') )
            temp=temp[g.span()[1]:]  
        temp=sql
        while True:
            g=re.search("(\d{5,6}.*?)\)+?", temp, flags=re.DOTALL) 
            if g == None:
                break 
            temp=temp[g.span()[1]:]
            yield g.groups(0)[0].replace('~newline~','\n').replace('~cparen~',')').replace('~comma~',',')    

    def _str_clean_insert(self, s):
        temp=s 
        while True:
            g=re.search("'(.*?)'", temp)
            if g == None:
                break
            old = temp[g.span()[0]:g.span()[1]]  
            s=s.replace(old, old.replace(',','~~').replace('\n','').replace('\r',''))
            temp=temp[g.span()[1]:]
        
        s=re.sub('\t|\n|\r','',s).strip(' ,()') 
        return s
    
 
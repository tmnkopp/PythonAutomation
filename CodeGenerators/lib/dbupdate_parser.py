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
  
    def parse(self):   
        m=re.search("'(\d{4}-\w{1,4}-\w{1,10})'", self.contents)
        if m != None:
            self.pk_form=m.groups(1)[0]  
  
        spos = re.search('SET IDENTITY_INSERT.*fsma_Questions.*ON',self.contents, re.IGNORECASE)
        epos = re.search('SET IDENTITY_INSERT.*fsma_Questions.*OFF',self.contents, re.IGNORECASE)
        
        sql=self.contents[spos.span()[1]:epos.span()[0]] 
        sql=self._clean_sql(sql)
        df_groups = self.parse_groups(self.contents)

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
                fields_values = list(zip(insert_fields, insert_values))
            
                self.ctx.logger.debug(f'dbparse inserts: {fields_values}')
                if len(fields_values) > 6:
                    d = {k:v.replace('~cparen~',')').replace('~comma~',',').replace('~newline~','\n').strip() for (k,v) in fields_values }
                    d['section']=i 
                    d['group'] = df_groups.iloc[i-1].to_dict()
                    d['insert_fields']=( ','.join(insert_fields), insert_fields )
                    d['identifier_text']=d['identifier_text'].replace('N\'','').replace('\'','')
                    d['QuestionText']=d['QuestionText'].replace('N\'','').replace('\'','')
                    if 'help_text' in d: d['help_text']=d['help_text'].replace('N\'','').replace('\'','')
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
                if (type(r[c]) != tuple) & (type(r[c]) != dict): 
                    val=str(r[c])
                    if re.search('text$',c, re.IGNORECASE):
                        val=f"N'{val}'"
                    fields=fields.replace(c, val) 
            sql=f'{sql}\n,({fields})' 
        sql=sql.replace('VALUES\n,(','VALUES\n (')
        return sql 
 
    def parse_groups(self, s):
        match = re.search("INSERT INTO fsma_QuestionGroups\s+(.+)\s+VALUES", s)
        ematch = re.search("SET IDENTITY_INSERT.+fsma_QuestionGroups.+OFF", s)
        s=s[match.span()[1]:ematch.span()[0]]
        fields=re.sub('[\s\(\)]','',match.groups(0)[0]).split(',')
        lst=[]
        for line in [l.replace('),','').strip('()') for l in s.split('\n') if len(l) > 20]:
            values = [l for l in line.split(',') if len(l) > 1] 
            lst.append(dict(zip(fields, values))) 
        df=pd.DataFrame(lst)
        return df
    
    def _clean_sql(self, sql):
        sql=re.sub('--.*','',sql)
        sql=re.sub('\n{2,}','\n',sql)
        return sql
 
    
 

import re, sys, argparse, json,  os 
from openpyxl import Workbook
import pandas as pd 
class script_generator():
    def __init__(self, ctx):  
        self.ctx=ctx
        self.root = os.path.dirname(os.path.realpath(__file__)) 
        self.ext='.pom'
    def generate(self, df, template=''): 
        st=''  
        for i,r in df.iterrows():
            code_template_path = self.ctx.get_template()
            m=re.search('\{(\w*)\}',code_template_path)
            if m is not None:
                g=m.groups(1)[0]
                if g in r.keys():  
                    code_template_path = code_template_path.replace('{'+g.upper()+'}',r[g])   
            try:
                self.ext = code_template_path[code_template_path.index('.'):] 
            except Exception as e:  
                print(f'self.ext {code_template_path}') 
                raise
            try: 
                self.ctx.logger.info(f'with open: {code_template_path}')
                with open(code_template_path, 'r', encoding=self.ctx.config['encoding'], errors='replace') as f: 
                    code_template_read = f.read() 
                for c in [c for c in df.columns if '{' in c]:     
                    code_template_read=re.sub(c, str(r[c]), code_template_read, flags=re.IGNORECASE)  
                st=st+code_template_read 
            except Exception as e:  
                print(f'code_template_read {code_template_read[:25]}')
                print(f'err {e}')
                raise
  
        return st
 
    def list_to_sql(self, items=[], PK_PickListType=808, PK_PickList=9999, Description='[Description]', UsageField='[UsageField]', encoding=None):
        if encoding == None:
            encoding=lambda s: re.sub('[^A-Z0-9]','',s.upper().strip()[:15])  
        plt=''
        with open(f'{self.ctx.get_tempalte_dir()}plt.sql', 'r') as f:
            plt=f.read()
            plt=plt.replace('{PK_PickListType}',str(PK_PickListType))
            plt=plt.replace('{Description}',Description)
            plt=plt.replace('{UsageField}',UsageField)
        pl=''
        with open(f'{self.ctx.get_tempalte_dir()}picklists.sql', 'r') as f:
            pl=f.read()
        sql_items=[] 
        for i, item in enumerate(list(items)): 
            s=pl.replace('{PK_PickList}',str(PK_PickList+i))
            s=s.replace('{CodeValue}',encoding(item))
            s=s.replace('{DisplayValue}',str(item)) 
            s=s.replace('{SORT}',str(i+1)) 
            sql_items.append(s)
        PK_PickList=PK_PickList+i+10
        sql=plt.replace('{picklists.sql}','\n,'.join(sql_items)[:])
        return sql_items, sql
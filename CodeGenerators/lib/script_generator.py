
import re, sys, argparse, json, xlrd, openpyxl, os 
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
            tmp = self.ctx.get_template()
            m=re.search('\{(\w*)\}',tmp)
            if m is not None:
                g=m.groups(1)[0]
                if g in r.keys():  
                    tmp = tmp.replace('{'+g.upper()+'}',r[g])   
            try:
                self.ext = tmp[tmp.index('.'):] 
            except Exception as e:  
                print(f'self.ext {tmp}') 
                raise
            try: 
                self.ctx.logger.info(f'with open: {tmp}')
                with open(tmp, 'r', encoding=self.ctx.config['encoding'], errors='replace') as f: 
                    tmp = f.read() 
                for c in [c for c in df.columns if '{' in c]:    
                    #tmp = tmp.replace("{"+c.upper()+"}", str(r[c])) 
                    tmp=re.sub(c, str(r[c]), tmp, flags=re.IGNORECASE)  
                st=st+tmp 
            except Exception as e:  
                print(f'tmp {tmp[:25]}')
                print(f'err {e}')
                raise
  
        return st
 
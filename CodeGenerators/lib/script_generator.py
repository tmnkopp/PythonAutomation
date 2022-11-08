
import re, sys, argparse, json, xlrd, openpyxl, os 
from openpyxl import Workbook
import pandas as pd 
class script_generator():
    def __init__(self):  
        self.root = os.path.dirname(os.path.realpath(__file__)) 
        self.ext='.pom'
    def generate(self, ctx):
        df=ctx.payload
        st='' 
        for i,r in df.iterrows():
            tmp = ctx.get_template()
            m=re.search('\{(\w*)\}',tmp)
            if m is not None:
                g=m.groups(1)[0]
                if g in r.keys(): 
                    tmp = tmp.replace('{'+g+'}',r[g])  
            self.ext = tmp[tmp.index('.'):] 
            try:
                with open(tmp, 'r', encoding=ctx.config['encoding'], errors='replace') as f: 
                    tmp = f.read()
                for c in df.columns:    
                    tmp = tmp.replace("{"+c.upper()+"}", str(r[c.upper()]))   
                st=st+tmp 
            except Exception as e:
                print(e)
  
        return st
 
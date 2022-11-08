import re, sys, os
import pandas as pd 
class df_indexer():
    def __init__(self, ctx): 
        self.ctx=ctx  
        self.lst=[] 
    def apply(self, df):
        self.lst=df.to_dict('records')
        lst=[]
        for i,rec in enumerate(self.lst):
             rec=self._get_index(rec)   
             lst.append(rec)
        return pd.DataFrame(lst)
    def _get_index(self, d): 
        if 'indexes' not in self.ctx.config.keys():
            return {}
        indexes=self.ctx.config['indexes']     
        for j,e in enumerate(indexes):
            field=e['field'] 
            if 'gap_on' in e.keys():
                if 'gap_on_pval' not in e.keys(): e['gap_on_pval']=d[e['gap_on']]  
                if d[e['gap_on']] != e['gap_on_pval']:
                    e['gap_on_pval']=d[e['gap_on']]
                    e['index']=e['index']+9
            if 'reset_on' in e.keys(): 
                if 'reset_on_pval' not in e.keys(): e['reset_on_pval']=d[e['reset_on']] 
                if d[e['reset_on']] != e['reset_on_pval']:
                    e['reset_on_pval']=d[e['reset_on']]
                    e['index']=1
            e['index']=e['index']+1  
            self.ctx.config['indexes'][j]=e
            d[field]=e['index']-1
        return d               

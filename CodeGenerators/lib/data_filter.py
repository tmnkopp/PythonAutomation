import re, sys, os
import pandas as pd 
class data_filter():
    def __init__(self, ctx): 
        self.ctx=ctx  
        self.lst=[] 
    def apply(self, df):
        if 'data_filters' not in self.ctx.config.keys(): return df
        self.lst=df.to_dict('records')
        lst=[]
        for i,rec in enumerate(self.lst):
             rec=self._get_filter(rec)   
             lst.append(rec)
        return pd.DataFrame(lst)
    def _get_filter(self, d):  
        data_filters=self.ctx.config['data_filters']     
        for j,e in enumerate(data_filters):
            field=e['field'] 
            if 'remove' in e.keys():  
                d[field]=re.sub(e['remove'],'',d[field])
        return d               

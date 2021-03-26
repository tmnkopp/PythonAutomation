import re
class MainFunc(object):  
    def __init__(self): 
        self.description_stubs = [ 'CVS','Prime', 'TRADER', 'Etsy', 'AMZN', 'WHOLEFDS', 'Amazon', 'LYFT' ,'INSTACART','Audible','YES','Zipcar','HBO','UBER'] 
        self.cat_replacements = { 
                'MISC': ['Gas','Etsy','Gifts & Donations'],
                'Bills & Utilities': ['APPLE_COM_BILL','Professional Services'],
                'Personal': ['Health & Wellness|Home'] 
            }
    
    def clean_desc(self, rval): 
        replacements = self.description_stubs 
        rval = ''.join([c if c.isalpha() else '_' for c in rval])
        rval = re.sub(r'(\d*|TST|SQ|amp)', '', rval)   
        for replacement in replacements: 
            m = re.match(r'.*('+replacement+').*', rval)  
            if m != None: 
                rval = m.group(1)  
        return rval.strip('_')
    
    def clean_cats(self, rval):  
        d =self.cat_replacements
        for k in d: 
            if re.match(r'.*('+ '|'.join(d[k]) + ').*', rval):
                return k
    
        return rval
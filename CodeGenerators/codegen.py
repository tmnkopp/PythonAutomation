import re
import nltk
from nltk.corpus import stopwords
sw=stopwords.words('english')
from nltk.stem.porter import PorterStemmer 

class encoder(object):  
    def __init__(self): 
        self.description_stubs = [ ] 
        self.cat_replacements = { } 
    def const_encoder(self, val):  
        val = re.sub('[^A-Za-z0-9]', ' ', val ) 
        val = ' '.join([w[:15] for w in val.split(' ') if w not in sw])
        #t = ' '.join([ps.stem(w) for w in t.split(' ')])
        val = val.upper().strip()
        val = re.sub('\s', '_', val) 
        val = re.sub('[AEIOU\s]', '', val)  
        return val 
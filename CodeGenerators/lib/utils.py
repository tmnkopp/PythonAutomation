import re
import nltk
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
sw=stopwords.words('english')
ps=PorterStemmer()

def apply_indexes(d, ctx):
    indexes=ctx.config['indexes'] 
    if 'prevgap' not in ctx.config.keys():
        ctx.config['prevgap']=''
    prevgap=ctx.config['prevgap']
    if 'gapon' not in ctx.config.keys():
        ctx.config['gapon']=''
    gapon=ctx.config['gapon'] 
    if 'gapsize' not in ctx.config.keys():
        ctx.config['gapsize']=15
    gapsize=ctx.config['gapsize'] 
    igap=1
    if gapon in d.keys():
        if d[gapon] != prevgap: 
            ctx.config['prevgap']=d[gapon]
            igap=gapsize
    for di in indexes:
        for key in di:
            di[key]=di[key]+igap
            d[key]=di[key]-1
    return d
def generate_id(t, limit=15): 
    t = ' '.join([w for w in t.split(' ') if w not in sw])
    t = ' '.join([ps.stem(w) for w in t.split(' ')]) 
    t = re.sub('[^A-Za-z0-9]', ' ', t )   
    t = t.upper().strip()
    t = re.sub('\s+', '_', t).replace('__','_')
    try:
        if t[0].isnumeric():
            t = 'N_'+ t
    except:
        pass  
    if len(t) > limit+5:
        t=t[:limit-5]+t[len(t)-5:]
    else:
        t=t[:limit]
    return t
def range_extractor(s):
    range=s.strip()  
    m=re.search('(\d+):(\d+)',range)
    mn=0
    mx=999
    if m.groups(0)[0]!='':
        mn=m.groups(0)[0]
    if m.groups(0)[1]!='':
        mx=m.groups(0)[1]   
    return int(mn),int(mx)
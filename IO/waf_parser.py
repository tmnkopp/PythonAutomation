import os
import json
from pathlib import Path
from pprint import pprint

fname = str(Path(__file__).parent)  + "\config.json" 

with open(fname, encoding = 'utf-8') as f:    
    data = json.load(f) 
    print(data)
    print(data['src'])  
exit()             

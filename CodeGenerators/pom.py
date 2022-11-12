import re, sys, argparse, json, xlrd, openpyxl, os 
from openpyxl import Workbook
import pandas as pd 
from tabulate import tabulate
from lib.context import context
from lib.questionnaire_picklist_parser import questionnaire_picklist_parser
from lib.questionnaire_parser import questionnaire_parser
from lib.script_generator import script_generator
from lib.indexer import df_indexer
from lib.data_filter import data_filter
from lib.csv_parser import csv_parser
from lib.utils import *
def main(): 
    ctx=context() 
    parser = argparse.ArgumentParser(description="ArgumentParser"
    , formatter_class=argparse.ArgumentDefaultsHelpFormatter) 
    parser.add_argument("-v", "--verbose", action="store_true", help="increase verbosity") 
    parser.add_argument("-c", "--console", help="increase verbosity", default='') 
    parser.add_argument("-r", "--range", help="output range", default='10') 
    parser.add_argument("-g", "--generate-scripts", action="store_true", help="generate scripts" )
    parser.add_argument("-l", "--loc", help="locate" )  
    args = vars(parser.parse_args())
    ctx.args=args 
    with open('config.json', 'r') as f: 
        ctx.config=json.loads(f.read())  
    if ctx.args['verbose']: 
        print(json.dumps(ctx.args, indent=1))
        print(ctx.args)
    
    range=ctx.args['range'].strip()  
    if ctx.config['parser'] != '':
        parser = globals()[ctx.config['parser']](ctx)   
        df=parser.parse() 
        if 'indexes' in ctx.config.keys():
            indexer = df_indexer(ctx)
            df=indexer.apply(df) 
        if 'data_filters' in ctx.config.keys():
            filter = data_filter(ctx)
            df=filter.apply(df)             
        if ctx.args['loc'] != None:  
            f=ctx.args['loc'].split('=')[0].strip()
            v=ctx.args['loc'].split('=')[1].strip()
            df=df.loc[df[f]==v] 
        df.to_csv(f'{ctx.get_dest()}\parsed.csv', index=False)  
        df.to_html(f'{ctx.get_dest()}\parsed.html')  
    
    df=pd.read_csv(f'{ctx.get_dest()}parsed.csv') 
    ctx.payload=df
        
    print(tabulate(df[:10].applymap(shorten), headers = 'keys', tablefmt = 'plain')) 
    print('...')
    print(tabulate(df[-10:].applymap(shorten), headers = 'keys', tablefmt = 'plain')) 
    
    gen=script_generator(ctx)   
    st=gen.generate(df)  

    if ctx.args['generate_scripts']:  
        p=f'{ctx.get_dest()}\script{gen.ext}'
        with open(p, 'w', encoding=ctx.config['encoding']) as f: f.write(st)
        print(p)
 
if __name__ == "__main__": 
   main() 
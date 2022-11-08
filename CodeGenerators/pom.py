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
        ,  formatter_class=argparse.ArgumentDefaultsHelpFormatter) 
    parser.add_argument("-v", "--verbose", action="store_true", help="increase verbosity") 
    parser.add_argument("-c", "--console", help="increase verbosity", default='') 
    parser.add_argument("-r", "--range", help="output range", default='0:10') 
    parser.add_argument("-g", "--generate-scripts", action="store_true", help="generate scripts" ) 
    args = vars(parser.parse_args())
    ctx.args=args 
    with open('_config.json', 'r') as f: 
        ctx.config=json.loads(f.read())  
    if ctx.args['verbose']: 
        print(json.dumps(ctx.args, indent=1))
        print(ctx.args)
    
    if ctx.config['parser'] != '':
        parser = globals()[ctx.config['parser']](ctx)   
        df=parser.parse() 
        if 'indexes' in ctx.config.keys():
            indexer = df_indexer(ctx)
            df=indexer.apply(df) 
        if 'data_filters' in ctx.config.keys():
            filter = data_filter(ctx)
            df=filter.apply(df)             
        if 'loc' in ctx.config.keys():
            for l in ctx.config['loc']:
                f=l['field']
                df=df.loc[df[f]==l['eq']]
        df.to_csv('parsed.csv', index=False)  
        df.to_html('parsed.html') 
    
    df=pd.read_csv('parsed.csv') 
    ctx.payload=df
      
    range=ctx.args['range'].strip()  
    mn, mx=range_extractor(range) 
    print(tabulate(df[mn:mx], headers = 'keys', tablefmt = 'plain')) 
    
    gen = script_generator()   
    st=gen.generate(ctx) 
    if 'script' in ctx.args['console']:
        print(st)

    if ctx.args['generate_scripts']:  
        p=f'{ctx.get_dest()}\script{gen.ext}'
        with open(p, 'w', encoding=ctx.config['encoding']) as f: f.write(st)
        print(p)

if __name__ == "__main__": 
   main() 
import re, sys, argparse, json, xlrd, openpyxl, os 
from openpyxl import Workbook
import pandas as pd 
from tabulate import tabulate
from lib.context import context
from lib.questionnaire_picklist_parser import questionnaire_picklist_parser
from lib.questionnaire_parser import questionnaire_parser
from lib.issue_parser import issue_parser
from lib.db_parser import db_parser
from lib.dbupdate_parser import dbupdate_parser
from lib.script_generator import script_generator  
from pathlib import Path
from lib.utils import *

def _get_parsers(): 
    for path in Path("lib").glob("*parser.py"):
        print(path)

def main(): 
    ctx=context() 
    parser = argparse.ArgumentParser(description="ArgumentParser"
    , formatter_class=argparse.ArgumentDefaultsHelpFormatter) 
    parser.add_argument("-v", "--verbose", action="store_true", help="increase verbosity")   
    parser.add_argument("-r", "--range", help="output range", default='0:200') 
    parser.add_argument("-g", "--generate-scripts",  action="store_true", help="generate scripts" ) 
    parser.add_argument("-c", "--use-cache", action="store_true", help="use cache" )
    parser.add_argument("-p", "--parser", default='', help="parser type" )
    args = vars(parser.parse_args())
    ctx.args=args 
    with open('config.json', 'r') as f: 
        ctx.config=json.loads(f.read())  
    
    if ctx.args['verbose']: _get_parsers()
      
    if ctx.args['parser'] != '':   
        parser = globals()[ctx.args['parser']](ctx)   
        df=parser.parse()   
        df=df.fillna(' NULL')
        df.to_csv(f'{ctx.get_dest()}\parsed.csv', index=False)  
        df.to_html(f'{ctx.get_dest()}\parsed.html')   
        print(f'{ctx.get_dest()}parsed.html\n')

    df=pd.read_csv(f'{ctx.get_dest()}parsed.csv') 
    ctx.payload=df

    range=ctx.args['range'].strip() 
    mn,mx=range_extractor(range) 
    print(f'\n\n') 
    print(tabulate(df[mn:mx].applymap(shorten), headers = 'keys', tablefmt = ctx.config['tablefmt'])) 
    print(f'\n\n') 
 
    if ctx.args['generate_scripts']: 
        gen=script_generator(ctx)   
        code=gen.generate(df) 
        print(f'\n{code}\n') 
        dest=f'{ctx.get_dest()}script{gen.ext}'
        with open(dest, 'w', encoding=ctx.config['encoding']) as f: 
            f.write(code)


if __name__ == "__main__": 
   main() 
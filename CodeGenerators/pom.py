import re, sys, argparse, json, xlrd, openpyxl, os 
from openpyxl import Workbook
import pandas as pd 
from tabulate import tabulate
from lib.context import context
from lib.questionnaire_picklist_parser import questionnaire_picklist_parser
from lib.questionnaire_parser import questionnaire_parser
from lib.issue_parser import issue_parser
from lib.script_generator import script_generator  
from lib.utils import *
def main(): 
    ctx=context() 
    parser = argparse.ArgumentParser(description="ArgumentParser"
    , formatter_class=argparse.ArgumentDefaultsHelpFormatter) 
    parser.add_argument("-v", "--verbose", action="store_true", help="increase verbosity")   
    parser.add_argument("-r", "--range", help="output range", default='0:10') 
    parser.add_argument("-g", "--generate-scripts", action="store_true", help="generate scripts" ) 
    parser.add_argument("-c", "--use-cache", action="store_true", help="use cache" )
    args = vars(parser.parse_args())
    ctx.args=args 
    with open('config.json', 'r') as f: 
        ctx.config=json.loads(f.read())  
    if ctx.args['verbose']: 
        print(json.dumps(ctx.args, indent=1))
        print(ctx.args)
    
    range=ctx.args['range'].strip()  
    if ctx.config['parser'] != '': 
        if not ctx.args['use_cache']:  
            parser = globals()[ctx.config['parser']](ctx)   
            df=parser.parse()   
            df.to_csv(f'{ctx.get_dest()}\parsed.csv', index=False)  
            df.to_html(f'{ctx.get_dest()}\parsed.html')  
    
    df=pd.read_csv(f'{ctx.get_dest()}parsed.csv') 
    ctx.payload=df

    mn,mx=range_extractor(range) 
    print(tabulate(df[mn:mx].applymap(shorten), headers = 'keys', tablefmt = ctx.config['tablefmt'])) 
    
    gen=script_generator(ctx)   
    st=gen.generate(df)  

    if ctx.args['generate_scripts']:  
        p=f'{ctx.get_dest()}script{gen.ext}'
        
        with open(p, 'w', encoding=ctx.config['encoding']) as f: f.write(st) 
        sql=gen.generate(df, code_template_path=f'{ctx.get_tempalte_dir()}fsma_QuestionsInsert.sql')
        
        p=f'{ctx.get_dest()}script.sql' 
        print(f'{sql}\n')
        print(f'{p}\n')
        print(f'{p}\n')
        with open(p, 'w', encoding=ctx.config['encoding']) as f: f.write(sql)

if __name__ == "__main__": 
   main() 
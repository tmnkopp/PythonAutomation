
import pandas as pd
import numpy as np
import re, json, os 
from lib.utils import * 
from lib.question_type_recommender import question_type_recommender
from lib.issue_provider import issue_provider 
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
from bs4 import BeautifulSoup  
import pandas as pd 
class issue_parser():
    def __init__(self, ctx):  
        self.ctx=ctx 
        self.root = os.path.dirname(os.path.realpath(__file__))  
        self.driver=None
        self.issue_provider=issue_provider(ctx)
        self.metric_regex='^\s*(\d[\d\.a-z]+)\s{1,9}[A-Z][\s|a-z]?'
    def _parse_element(self, e): 
        return str(e)
    
    def _line_generator(self, issueHTML):   
        soup=BeautifulSoup(issueHTML, features="lxml") 
        ptags = soup.select('td.confluenceTd, p')   
        for ptag in ptags:
            lines = re.split('\n', ptag.text) 
            for line in lines:  
                yield {'tag':ptag , 'line_text':line }

    def parse(self
        , issue_number=None
        , pk=None
        , parse_regex=None 
        , line_generator=None
        , metric_parsers={}):

        if line_generator == None:
            line_generator=self._line_generator
        if parse_regex==None:
            parse_regex=self.metric_regex
        else:
            self.metric_regex=parse_regex

        if issue_number==None:
            print('Enter Ticket Number:')
            issue_number = input()

        min,mx=0,0
        num_range=range(min,mx)
        if ':' in  issue_number:
            min,mx=range_extractor(issue_number)
            num_range=range(min,mx) 
        else: 
            min=re.sub('[^0-9]','',issue_number)
            num_range=range(int(min), int(min)+1)
        
        parsed=[]
         
        qr = question_type_recommender(self.ctx, verbose=True, use_cache=True)
        for group, issue_number in enumerate(num_range):

            print(f'processing: {issue_number}')  
            issueHTML=self.issue_provider.provide(issue_number)  
            for e in line_generator(issueHTML):
                
                line_text = e['line_text']
                metric=re.search(parse_regex,line_text)   
                
                self.ctx.logger.info(f'{parse_regex}:{line_text} :metric {metric}')
                if(metric): 

                    idt=str( metric.groups(1)[0]  )
                    question_text = line_text.replace(idt,'')
                    
                    question_type = qr.recommend( question_text )
                    PK_QuestionType=question_type['PK_QuestionType']

                    FK_PickListType = ' NULL' 
                    if re.search('17|43', str(PK_QuestionType)):
                        FK_PickListType = '0' 
 
                    d={
                         '{idt}':idt     
                        ,'{QuestionText}' : question_text
                        ,'{FK_QuestionType}' : str(PK_QuestionType)
                        ,'{group}':str(group)
                        ,'{QT_CODE}' : question_type['Code'] 
                        ,'{FK_PickListType}': FK_PickListType
                        #-r,'metric': self._parse_element(e)
                    }
                    for k,fn in metric_parsers.items(): 
                        d[k]=fn(e) 
                    d['{ISSUE}']=str(issue_number)
                    parsed.append(d) 

                footnote=re.search('^\s*\[(\d*)\]',line_text)   
                if(footnote): 
                    footnote_num=str(footnote.groups(1)[0])
                    d={
                         '{idt}':f'{footnote_num}'    
                        ,'{QuestionText}' : question_text 
                        ,'{FK_QuestionType}' : '18'
                        ,'{group}':str(group)
                        ,'{QT_CODE}' : 'LABEL'
                        ,'{FK_PickListType}': ' NULL'
                        #,'metric': self._parse_element(e)
                    }
                    d['{ISSUE}']=str(group)
                    parsed.append(d) 
                
        df=pd.DataFrame(parsed)  
        df['{sortpos}']=range(1,len(df)+1) 

        if pk==None:
            dfDefaults = sql_todf(" SELECT MAX(PK_Question) + 100 PK_Question, MAX(QGROUP) + 10  PK_QuestionGroup FROM vwQuestions ", self.ctx.config['connstr']) 
            pk=dfDefaults.loc[0, 'PK_Question']
        df['{PK_Question}']=range(pk,len(df)+pk) 
  
        return df 
    



class question_picklist_recommender():
    def __init__(self, ctx):  
        self.ctx=ctx  
        self.dfpk=sql_todf(f"""
                SELECT  FK_QuestionType, Code, QuestionText, CAST(FK_PickListType AS NVARCHAR(9)) FK_PickListType
                FROM fsma_Questions 
                INNER JOIN fsma_QuestionTypes ON fsma_Questions.FK_QuestionType=fsma_QuestionTypes.PK_QuestionTypeId
                WHERE FK_QuestionType IS NOT NULL AND QuestionText IS NOT NULL  
                AND Code IN ( 'PICK',  'MULTICHECKBOX')  AND FK_PickListType IS NOT NULL
                ORDER BY PK_QUESTION DESC
                """, self.ctx.connstr) 
        
    def recommend(self, question, threshold=.70, verbose=False):  
        dfpk = self.dfpk 
        if verbose:
            print ( question.strip() ) 
        for i,r in dfpk.iterrows():    
            ratio=SequenceMatcher(None, question, r['QuestionText']).ratio() 
            dfpk.loc[i, 'ratio'] = ratio
            if ratio > threshold: 
                break
        d=dfpk.loc[ dfpk.ratio > threshold ]
        d=d.sort_values(by=['ratio'], ascending=False) 
        result=0
        if len(d) > 0:
            result=d.iloc[0]['FK_PickListType']
        return {'result':result, 'df': d}
    
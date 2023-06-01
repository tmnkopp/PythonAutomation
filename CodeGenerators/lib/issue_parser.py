
import pandas as pd
import numpy as np
import re, json, os 
from lib.utils import * 
from lib.question_type_recommender import question_type_recommender
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
    def _parse_element(self, e): 
        return str(e)
    
    def parse(self
        , issue_number=None
        , pk=None
        , parse_regex='^\s{0,5}(\d[\d\.a-z]+)\s[A-Z][\s|a-z]?' 
        , metric_parsers={}):
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
        group = 0
        for issue_number in num_range:

            print(f'processing: {issue_number}')  
            group=group+1

            issueHTML=self.issue_provider.provide(issue_number) 
            soup=BeautifulSoup(issueHTML, features="lxml") 
            le = soup.select('td.confluenceTd, p')  

            qr = question_type_recommender(self.ctx, verbose=True, use_cache=True)
            # qpr = question_picklist_recommender(self.ctx)

            for i,e in enumerate(le):
                self.ctx.logger.info(f'text: {str(e.text)}')

                metric=re.search(parse_regex,str(e.text))   
                if(metric):   
                    question_type = qr.recommend( e.text )
                    PK_QuestionType=question_type['PK_QuestionType']

                    FK_PickListType = ' NULL' 
                    if re.search('17|43', str(PK_QuestionType)):
                        FK_PickListType = '0' 

                    idt=str(metric.groups(1)[0]  )
                    d={
                         '{idt}':idt     
                        ,'{QuestionText}' : re.sub( r'[^\x00-\x7f]',r'', e.text.replace(str(idt),'') ) 
                        ,'{FK_QuestionType}' : str(PK_QuestionType)
                        ,'{group}':str(group)
                        ,'{QT_CODE}' : question_type['Code'] 
                        ,'{FK_PickListType}': FK_PickListType
                        #-r,'metric': self._parse_element(e)
                    }
                    for k,fn in metric_parsers.items(): 
                        d[k]=fn(str(e)) 
                    parsed.append(d) 

                footnote=re.search('^\s*\[(\d*)\]',str(e.text))   
                if(footnote): 
                    footnote_num=str(footnote.groups(1)[0])
                    d={
                         '{idt}':f'{footnote_num}'    
                        ,'{QuestionText}' : re.sub( r'[^\x00-\x7f]',r'', e.text ) 
                        ,'{FK_QuestionType}' : '18'
                        ,'{group}':str(group)
                        ,'{QT_CODE}' : 'LABEL'
                        ,'{FK_PickListType}': ' NULL'
                        #,'metric': self._parse_element(e)
                    }
                    parsed.append(d) 

        df=pd.DataFrame(parsed)  
        df['{sortpos}']=range(1,len(df)+1) 
 
        if pk==None:
            dfDefaults = sql_todf(" SELECT MAX(PK_Question) + 100 PK_Question, MAX(QGROUP) + 10  PK_QuestionGroup FROM vwQuestions ", self.ctx.config['connstr']) 
            pk=dfDefaults.loc[0, 'PK_Question']
        df['{PK_Question}']=range(pk,len(df)+pk) 
        df['{ISSUE}']=issue_number
      
        return df 
    


class issue_provider(): 
    def __init__(self, ctx):  
        self.ctx=ctx 
        self.root = os.path.dirname(os.path.realpath(__file__))  
        self.driver=None
        self._jira_init = False
    
    def _init_jira(self):
        if not self._jira_init:
            options = Options()
            options.add_argument("--start-minimized")  
            options.add_argument("--window-size=1220,980")  
            driver = webdriver.Chrome(executable_path=ChromeDriverManager(log_level=0).install() ,options=options)   
            driver.get(f"https://dayman.cyber-balance.com/jira/login.jsp")  
            driver.find_element(By.XPATH, '//input[contains(@id, "user")]').send_keys(self.ctx.config['user'])
            driver.find_element(By.XPATH, '//input[contains(@id, "pass")]').send_keys(self.ctx.config['pass']) 
            driver.find_element(By.XPATH, '//input[contains(@id, "submit")]').click() 
            df = pd.read_html(driver.page_source)[0].loc[:, ['Key','Summary']] 
            df.to_csv(self.ctx.get_dest()+'issues.csv', index=False)
            self.issues = df
            self.driver=driver
            self._jira_init = True

    def provide(self, issue_number, usecache=True):

        cache_file = f'{self.ctx.get_cache_dir()}\{issue_number}.html' 
        if not os.path.isfile(cache_file):
            usecache=False

        self.ctx.logger.info(f'usecache: {usecache} cache_file: {cache_file}')
        if not usecache: 
            self._init_jira() 
            self.driver.get(f"https://dayman.cyber-balance.com/jira/si/jira.issueviews:issue-html/CS-{issue_number}/CS-{issue_number}.html")  
            ele=self.driver.find_element_by_css_selector('td#descriptionArea')
            
            issueHTML=ele.get_attribute('innerHTML')
            with open(cache_file, 'w', encoding='UTF-8', errors='ignore') as f: 

                issueHTML=re.sub('\n\n','\n',issueHTML)
                f.write(issueHTML)

        if usecache: 
            with open(cache_file, 'r', encoding='UTF-8', errors='ignore') as f: 
                issueHTML=f.read()
        return issueHTML

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
    
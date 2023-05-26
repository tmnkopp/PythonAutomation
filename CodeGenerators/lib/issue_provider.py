
import pandas as pd
import numpy as np
import re, json, os 
from lib.utils import * 
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
from bs4 import BeautifulSoup  
import pandas as pd 
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

    def _parse_element(self, e): 
        return str(e)
    
    def parse_metrics(self
                      , tnum
                      , pk=None
                      , met_parse='(\d{1,2}\.\d{1,2}\.?\d{0,2}\.?[\.\d\w]?)\s+[A-Z]'
                      , parse_to=None
                      , usecache=False
                      , metric_parsers={}):
         
        tnum=re.sub('[^0-9]','',tnum)
        innerHTML=''

        cache_file = f'{self.ctx.get_cache_dir()}\{tnum}.html'

        self.ctx.logger.info(f'cache_file: {cache_file}')
        if not os.path.isfile(cache_file):
            usecache=False

        self.ctx.logger.info(f'usecache: {usecache}') 
        if not usecache: 
            self._init_jira() 
            self.driver.get(f"https://dayman.cyber-balance.com/jira/si/jira.issueviews:issue-html/CS-{tnum}/CS-{tnum}.html")  
            ele=self.driver.find_element_by_css_selector('td#descriptionArea')
            
            innerHTML=ele.get_attribute('innerHTML')
            with open(cache_file, 'w', encoding='UTF-8', errors='ignore') as f: 
                innerHTML=re.sub('\n\n','\n',innerHTML)
                f.write(innerHTML)

        if usecache: 
            with open(cache_file, 'r', encoding='UTF-8', errors='ignore') as f: 
                innerHTML=f.read()

        soup=BeautifulSoup(innerHTML) 
        le = soup.select('td.confluenceTd, p') 
        lod=[]
        for i,e in enumerate(le):
            m=re.search(met_parse,str(e.text))   
            if(m):   
                qt=get_question_type(e.text, self.ctx)
                d={
                     '{idt}':m.groups(1)[0]        
                    ,'{QuestionText}': re.sub( r'[^\x00-\x7f]',r'', e.text.replace(m.groups(1)[0],'') ) 
                    ,'{FK_QuestionType}':qt['PK_QuestionTypeId']  
                    ,'{CTRLCODE}':qt['Code'] 
                    ,'metric': self._parse_element(e)
                }
                for k,fn in metric_parsers.items(): d[k]=fn(str(e)) 
                lod.append(d)  
        df=pd.DataFrame(lod)  
        df['{sortpos}']=range(1,len(df)+1) 
        df['{identifier_text}']=df['{idt}'] 
        if pk==None:
            dfDefaults = sql_todf(" SELECT MAX(PK_Question) + 100 PK_Question, MAX(QGROUP) + 10  PK_QuestionGroup FROM vwQuestions ", self.ctx.config['connstr']) 
            pk=dfDefaults.loc[0, 'PK_Question']
        df['{PK_Question}']=range(pk,len(df)+pk) 
        if parse_to==None:
            parse_to='issues.csv'
        df.to_csv(self.ctx.get_dest()+parse_to, index=False)
 
        return df 
    
 
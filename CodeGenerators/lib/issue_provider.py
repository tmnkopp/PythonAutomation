
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
        options = Options()
        options.add_argument("--start-minimized")  
        options.add_argument("--window-size=820,680")  
        driver = webdriver.Chrome(executable_path=ChromeDriverManager(log_level=0).install() ,options=options)  

        driver.get(f"https://dayman.cyber-balance.com/jira/login.jsp")  
        driver.find_element(By.XPATH, '//input[contains(@id, "user")]').send_keys(ctx.config['user'])
        driver.find_element(By.XPATH, '//input[contains(@id, "pass")]').send_keys(ctx.config['pass']) 
        driver.find_element(By.XPATH, '//input[contains(@id, "submit")]').click() 
        df = pd.read_html(driver.page_source)[0].loc[:, ['Key','Summary']] 
        df.to_csv(ctx.get_dest()+'issues.csv', index=False)
        self.issues = df
        self.driver=driver

    def _parse_element(self, e): 
        return str(e)
    def parse_metrics(self, tnum, pk=None, met_parse='(\d{1,2}\.\d{1,2}\.?\d{0,2}\.?[\.\d\w]?)\s+[A-Z]', parse_to=None, usecache=False):
        driver=self.driver
        ctx=self.ctx
        tnum=re.sub('[^0-9]','',tnum)
        innerHTML=''

        cache_file = f'{ctx.get_cache_dir()}\{tnum}.html'
        
        self.ctx.logger.info(f'cache_file: {cache_file}')
        if not os.path.isfile(cache_file):
            usecache=False

        self.ctx.logger.info(f'usecache: {usecache}') 
        if not usecache: 
            driver.get(f"https://dayman.cyber-balance.com/jira/si/jira.issueviews:issue-html/CS-{tnum}/CS-{tnum}.html")  
            ele=driver.find_element_by_css_selector('td#descriptionArea')
            innerHTML=ele.get_attribute('innerHTML')
            with open(cache_file, 'w', encoding='UTF-8', errors='ignore') as f: 
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
                lod.append({'{identifier_text}':m.groups(1)[0]
                    ,'{idt}':m.groups(1)[0]        
                    ,'{QuestionText}':e.text.replace(m.groups(1)[0],'') 
                    ,'{FK_QuestionType}':get_question_type(e.text, ctx)['PK_QuestionTypeId'] 
                    ,'element': self._parse_element(e)
                })  
        df=pd.DataFrame(lod)  
        df['{sortpos}']=range(1,len(df)+1) 
        dfDefaults = pd.DataFrame()
        if pk==None:
            dfDefaults = sql_todf(" SELECT MAX(PK_Question) + 100 PK_Question, MAX(QGROUP) + 10  PK_QuestionGroup FROM vwQuestions ", self.ctx.config['connstr']) 
            pk=dfDefaults.loc[0, 'PK_Question']
        df['{PK_Question}']=range(pk,len(df)+pk) 
        if parse_to==None:
            parse_to='issues.csv'
        df.to_csv(ctx.get_dest()+parse_to, index=False)
        return df 
    
 
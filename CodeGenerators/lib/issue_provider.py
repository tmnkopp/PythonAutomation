

import pandas as pd
import numpy as np
import re, json, os, time 
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
            # driver = webdriver.Chrome(executable_path=ChromeDriverManager(log_level=0).install() ,options=options)  
            driver = webdriver.Chrome(executable_path=r"C:\bom\drivers\119\chromedriver.exe" ,options=options)   
            driver.get(f"https://dayman.cyber-balance.com/jira/login.jsp")  
            driver.find_element(By.XPATH, '//input[contains(@id, "user")]').send_keys(self.ctx.config['user'])
            driver.find_element(By.XPATH, '//input[contains(@id, "pass")]').send_keys(self.ctx.config['pass']) 
            driver.find_element(By.XPATH, '//*[contains(@id, "submit")]').click() 
            time.sleep(1) 
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
            time.sleep(.8) 
            ele=self.driver.find_element_by_css_selector('td#descriptionArea')
            
            issueHTML=ele.get_attribute('innerHTML')
            with open(cache_file, 'w', encoding='UTF-8', errors='ignore') as f:  
                issueHTML=re.sub('\n\n','\n',issueHTML)
                f.write(issueHTML)
        if usecache: 
            with open(cache_file, 'r', encoding='UTF-8', errors='ignore') as f: 
                issueHTML=f.read()
         
        issueHTML=self._normalizer(issueHTML) 
        return issueHTML
    
    def _normalizer(self, s): 
        s=re.sub( r'&nbsp;',r' ', s) 
        s=re.sub( r'\s{2,}',r' ', s)
        s=re.sub( r'\n{2,}|\r{2,}',r'\n', s)  
        s=re.sub( r'\t',r' ', s) 
        s=re.sub( r'[^\x00-\x7f]',r'', s)
        return s
import json, re,  os, time, random, time
from bs4 import BeautifulSoup   
import pandas as pd 
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC   
from datetime import datetime, date, timedelta
import pymongo
import logging  

class jira_context():
    def __init__(self):  
        self.logger=self._get_logger()
        self.config=self._get_config()
    def _get_config(self):
        config=''
        with open(r'C:\Users\Tim\source\repos\Py\snippets\CodeGenerators\config.json') as f:
            config = json.loads(f.read())  
        return config
    def _get_logger(self):
        logging.basicConfig(filename='config.log', level=logging.INFO, format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p') 
        #logging.getLogger().setLevel(logging.INFO)
        logger=logging.getLogger('config') 
        return logger
    


class jiradriver():
    def __init__(self):   
        self.driver=None 
        self.ctx=jira_context()
        self.issues=None
    def init(self):
        if self.driver==None:
            config=self.ctx.config
            options = Options() 
            options.add_argument("--window-size=1220,980")  
            options.add_argument('--log-level=3')
            driver = webdriver.Chrome(executable_path=ChromeDriverManager().install() ,options=options) 
            driver.get(f"https://dayman.cyber-balance.com/jira/login.jsp")  
            driver.find_element(By.XPATH, '//input[contains(@id, "user")]').send_keys(config['user'])
            driver.find_element(By.XPATH, '//input[contains(@id, "pass")]').send_keys(config['pass']) 
            driver.find_element(By.XPATH, '//*[contains(@id, "submit")]').click() 
            time.sleep(.5)
            self.driver=driver 
        else:  
            for h in self.driver.window_handles:
                self.driver.switch_to.window(h)
                if h != self.driver.window_handles[0]: 
                    self.driver.close()  
            self.driver.switch_to.window(self.driver.window_handles[0])
            self.driver.get(f'https://dayman.cyber-balance.com/jira/secure/Dashboard.jspa')
        return self
    def log(self, issues=None, time_spent='20m'):
        if issues==None:
            issues=self.issues
        driver=self.driver
        for issue in issues: 
            self._fetch_issue(issue)
            try:
                ele = WebDriverWait(driver, timeout=1).until(lambda d: d.find_element_by_xpath("//a[@id='opsbar-transitions_more']//span[contains(text(),'Open')]"))
                ele.click() 
                ele = WebDriverWait(driver, timeout=1).until(lambda d: d.find_elements_by_xpath("//span[contains(text(),'Start Progress')]")) 
                if len(ele) > 0:
                    ele[0].click()   
                    driver.get(issue)
                    time.sleep(2)   
            except Exception as e:
                self.ctx.logger.error(f'[log()    ] Start Progress timeout') 
            try:    
                ele = WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//a[@id='opsbar-operations_more']"))
                ele.click() 
                ele = WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//span[contains(text(),'Log work')]"))
                ele.click()
                ele = WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//*[@id='log-work-time-logged']"))
                ele.send_keys(time_spent) 
                ele = driver.find_elements_by_xpath("//*[@id='log-work-submit']")
                ele[0].click()
            except Exception as e:
                self.ctx.logger.error(f'[log()     ] {e}') 

        return self

    def _fetch_issue(self, issue):
        driver=self.driver  
        driver.execute_script("window.open('');") 
        driver.switch_to.window(driver.window_handles[len(driver.window_handles)-1]) 
        self.ctx.logger.info(f'[issue     ] {issue}')
        driver.get(issue) 
        time.sleep(1)   

    def subo(self,issues=None):
        if issues==None:
            issues=self.issues
        driver=self.driver
        for issue in issues[:]:  
            self._fetch_issue(issue)  
            try:
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//a//span[contains(text(), 'Progress')]")).click() 
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//span[contains(text(),'Resolve Issue')]")).click()  
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//*[@id='issue-workflow-transition-submit']")).click()  
                time.sleep(3) 
            except Exception as e:
                self.ctx.logger.error(f'[subo()    ] {e}') 
             
            try:
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//a//span[contains(text(), 'Resolved')]")).click() 
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//span[contains(text(),'Ready To Test')]")).click()  
                WebDriverWait(driver, timeout=5).until(lambda d: d.find_element_by_xpath("//*[@id='issue-workflow-transition-submit']")).click()   
                time.sleep(3) 
            except Exception as e:
                self.ctx.logger.error(f'[subo()    ] {e}')   
        return self

    def get_issues(self, by='7.6'):
        driver=self.driver
        driver.get(f'https://dayman.cyber-balance.com/jira/secure/Dashboard.jspa')
        time.sleep(1) 
        if re.match('^[0-9][0-9\.]+$', by ):
            xpath= "//td[@class='fixVersions']//a[contains(text(),'" + by + "')]/../..//a[@class='issue-link']" 
        else:
            xpath="//table[@class='issue-table']//a[contains(text(),'" + by + "')]"

        self.ctx.logger.info(f'[xpath      ] {xpath}')  
        eles = driver.find_elements_by_xpath(xpath) 
        issues={e.get_attribute("href") for e in eles}
        self.ctx.logger.info(f'[issues     ] {issues}') 
        for issue in issues:
            driver.get(issue)
            time.sleep(.25)  
        self.issues=list(issues)
        return self
 



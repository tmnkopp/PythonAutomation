

import json, re,  os, time, random 
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
from datetime import datetime

options = Options()
options.add_argument("--start-minimized")

driver = webdriver.Chrome(executable_path=ChromeDriverManager().install() ,chrome_options=options) 
 
stat = driver.find_element(By.XPATH, '//*[contains(@class, "statistics")]')
who = driver.find_element(By.XPATH, '//*[contains(@class, "online-list")]')
try:
    now = datetime.now()
    dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
    stats = f'[{dt_string}] {who.text} {stat.text}\n' 
except Exception as e:
    print(e)
finally: 
    driver.quit()
 


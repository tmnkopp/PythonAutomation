

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
driver.get("https://www.kristhamdy.com/forum/") 
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
 
stats = stats.replace('Most users ever online was 14 on Wed Nov 21, 2018 10:23 am Statistics\n', '')
stats = stats.replace('Our newest member LilAnnyCat.', '') 
stats = stats.replace('(based on users active over the past 15 minutes)', '')  
stats = stats.replace('In total there are ', '') 
stats = re.sub('\d{1,3} registered and \d{1,3} hidden', '', stats) 
stats = re.sub('::  \n', '::', stats)  

with open("C:\\Users\\timko\\source\\repos\\PythonBoiler\\Selenium\\out.txt", "a") as f:
    f.write(f"{ stats }\n")

#with open("C:\\Users\\timko\\source\\repos\\PythonBoiler\\Selenium\\out.txt", "r") as f:
#    print ( f.read() ) 


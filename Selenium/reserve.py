import json, re,  os, time, random 
from bs4 import BeautifulSoup    
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.options import Options
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC  
from config import *
from datetime import datetime, timedelta

driver = webdriver.Chrome(executable_path=ChromeDriverManager().install() ) 
 
driver.get("https://auth.buildinglink.com/Account/Login") 
driver.find_element(By.XPATH, '//*[contains(@id, "UserName")]').send_keys(bl_user)
driver.find_element(By.XPATH, '//*[contains(@id, "Password")]').send_keys(bl_pass) 
driver.find_element(By.XPATH, '//*[contains(@id, "LoginButton")]').click() 
driver.get("https://buildinglink.com/v2/tenant/home/defaultnew.aspx")  

def get_date(addDays=0):
    today = datetime.today() 
    modified_date = today + timedelta(days=addDays)
    modified_date = modified_date.strftime('%m/%d/%Y') 
    url = f"https://buildinglink.com/v2/tenant/Amenities/NewReservation.aspx?amenityId=41471&from=0&selectedDate={modified_date}"
    print(url)
    driver.get(url)     
    return modified_date

def click_cal(driver, time):
    if time < 1:
        time=1
    ele = driver.find_elements(By.XPATH, '//*[@id="ctl00_ContentPlaceHolder1_StartTimePicker_dateInput"]')[0] 
    ele.click() 
    ele.send_keys(f'{time}:00 PM')  
    cal = driver.find_elements(By.XPATH, '//*[contains(@class, "RadCalendarTimeView")]')[0]
    cal.find_element( By.LINK_TEXT , f'{time}:00 PM').click()     


i=0 
while True:  
    d = get_date(i)
    err = driver.find_elements(By.XPATH, '//*[contains(@id, "ValidationContainer")]')    
    if 'error' not in err[0].text or i>=5: 
        break
    i=i+1 
i=0
while True: 
    click_cal(driver, i)
    err = driver.find_elements(By.XPATH, '//*[contains(@id, "ValidationContainer")]')   
    if 'same time period' not in err[0].text or i>=5:  
        break
    i=i+1    
# subo = driver.find_elements(By.XPATH, '//a[contains(@id, "ctl00_ContentPlaceHolder1_FooterSaveButton")]')[0] 
# subo = driver.find_elements(By.XPATH, '//a[contains(@id, "ctl00_ContentPlaceHolder1_FooterCancelButton")]')[0]
# subo.click()   


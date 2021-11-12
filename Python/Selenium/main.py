import os

from selenium import webdriver
from selenium.webdriver.chrome.service import Service


DIR = os.path.dirname(__file__)
WEBDRIVER_PATH = os.path.join(DIR, 'webdrivers')

chrome_path = f"{WEBDRIVER_PATH}/chromedriver.exe"
print(chrome_path)

chrome = Service(chrome_path)
driver = webdriver.Chrome(service=chrome)

driver.quit()
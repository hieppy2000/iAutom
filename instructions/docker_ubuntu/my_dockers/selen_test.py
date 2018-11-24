
from pyvirtualdisplay import Display
from selenium import webdriver
import time
from selenium.webdriver.chrome.options import Options
chrome_options = Options()
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("--ignore-certificate-errors")
chrome_options.add_argument("--ignore-ssl-errors")


display = Display(visible=0, size=(1024, 760))
display.start()

driver = webdriver.Chrome(executable_path="/home/hiep/my_dockers/chromedriver", chrome_options=chrome_options)
driver.get("http://www.yahoo.com")
time.sleep(3)
print ("close driver")
print (driver.title)
driver.close()

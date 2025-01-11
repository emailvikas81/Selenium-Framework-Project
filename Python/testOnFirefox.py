from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import 
DesiredCapabilities
from selenium.webdriver.support.ui import WebDriverWait 
import time, unittest
class OnFirefox (unittest.TestCase):
def setUp(self) :
 self.driver = webdriver.Remote(
 command_executor='http://localhost:4444/wd/hub',
 desired_capabilities=DesiredCapabilities.Firefox)
def test_Google_Search_FF(self):
 driver = self.driver
 driver.get("http://www.google.com")
 inputElement = driver.find_element_by_name("q")
 inputElement.send_keys("Cheese!")
 inputElement.submit()
 WebDriverWait(driver, 20).until(lambda driver : 
 driver.title.lower().startswith("cheese!"))
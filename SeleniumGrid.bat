chdir /d  D:\Test Automation\JavaScript\SeleniumProject\

start "SeleniumProject Execution" /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role hub

start /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role webdriver -hub http://localhost:4444/grid/register -browser "browserName=internet explorer,version=7,platform=WINDOWS,version=9" -port 5555 

start /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role webdriver -hub http://localhost:4444/grid/register -browser browserName=firefox,platform=WINDOWS,version=8 -port 5557

start /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role webdriver -hub http://localhost:4444/grid/register -browser browserName=chrome,platform=WINDOWS,version=32 -Dwebdriver.chrome.driver="D:\Test Automation\JavaScript\SeleniumGrid\drivers\chromedriver.exe" -port 5558

start /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role webdriver -hub http://localhost:4444/grid/register -browser browserName=safari,platform=WINDOWS,version=5 -port 5559

start /B cmd /k java -jar lib/selenium-server-standalone-2.39.0.jar -role webdriver -hub http://localhost:4444/grid/register -browser "browserName=android,platform=ANDROID,version=4.4" -port 8080


SLEEP 30
start cmd /k "D:\Test Automation\JavaScript\SeleniumProject\RunTest.bat"
require 'selenium-webdriver'

# Firefox -- Geckodriver.exe
#Chrome -- Chromedriver.exe
#IE -- InternetExplorerDriver.exe
#Opera -- OperaDriver.exe
#Safari -- SafariDriver.exe

driver = Selenium:WebDriver.for :Firefox

driver.navigate.to 'http://mark7.herokuapp.com'

driver.quit

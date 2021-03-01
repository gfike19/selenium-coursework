require "selenium-webdriver"

# TEST: Sign up for blog
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://selenium-blog.herokuapp.com/signup"
username = driver.find_element(id: "user_username")
email = driver.find_element(id: "user_email")
pwd = driver.find_element(id: "user_password")

driver.quit
require "selenium-webdriver"
require "rspec"
# TEST: Sign up for blog
describe "Blog application" do
    describe "signup to the blog application" do
        it "confirm that a user can successfully signup" do
            driver = Selenium::WebDriver.for :firefox
            driver.navigate.to "https://selenium-blog.herokuapp.com/signup"

            username = driver.find_element(id: "user_username")
            user.send_keys("user")

            email = driver.find_element(id: "user_email")
            email.send_keys("email@test.com")

            pwd = driver.find_element(id: "user_password")
            pwd.send_keys("password")

            submit = driver.find_element(id: "submit")
            submit.click

            banner = driver.find_element(id: "flask_success")
            banner_text = banner.text
            expect(banner_text).to eq("Welcome to the alpha blog user")
            driver.quit
        end
    end
end
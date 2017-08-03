require 'watir'
driver  = Selenium::WebDriver.for :internet_explorer
browser = Watir::Browser.new(driver)

browser.driver.manage.timeouts.page_load = 10
browser.window.resize_to(1000, 600)
browser.window.move_to(0, 0)

browser.goto "http://awful-valentine.com/"


browser.text_field(:id, "searchinput").clear
browser.text_field(:id, "searchinput").set("Cheese")
browser.button(:id, "searchsubmit").click

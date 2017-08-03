require 'watir'
driver  = Selenium::WebDriver.for :internet_explorer
browser = Watir::Browser.new(driver)

browser.driver.manage.timeouts.page_load = 1
browser.window.resize_to(1000, 600)
browser.window.move_to(0, 0)

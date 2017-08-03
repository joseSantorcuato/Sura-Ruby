gem 'selenium-webdriver', '= 2.53.4'
require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'

class Buscador < Test::Unit::TestCase

     def test_prueba



       driver = Selenium::WebDriver.for :remote, desired_capabilities: :chrome



     driver.get "http://awful-valentine.com/"
     driver.find_element(:id, "searchinput").clear
     driver.find_element(:id, "searchinput").send_keys("cheese")
     driver.find_element(:id, "searchsubmit").click
     assert(driver.find_element(:class, "entry").text.include?("No Results Found"))
     driver.quit
     end
end

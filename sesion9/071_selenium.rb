titulo1 = "Curso Ruby 71\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


espacio = " \n"
  puts espacio
  require 'rubygems'
  require 'selenium-webdriver'
  require 'test/unit'

class Buscador < Test::Unit::TestCase

     def test_prueba
       selenium = Selenium::WebDriver.for(:chrome)
       selenium.get("http://awful-valentine.com/")
       selenium.find_element(:id, "searchinput").clear
       selenium.find_element(:id, "searchinput").send_keys("never")
       selenium.find_element(:id, "searchsubmit").click
       assert(selenium.find_element(:class, "more-info").text.include?("PAPA"))

       selenium.quit
     end
end

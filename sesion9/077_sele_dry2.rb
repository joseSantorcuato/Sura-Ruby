titulo1 = "Curso Ruby 76\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3
require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'

class Buscador < Test::Unit::TestCase

   def setup
     @selenium = Selenium::WebDriver.for(:chrome) #variables de instancia @
end

   def teardown
     @selenium.quit
   end

   def test_uno
   @selenium.get("http://awful-valentine.com/")

   @selenium.find_element(:css, '.special-item a[href*="our-love-is-special"].more-info').click
   end
 end

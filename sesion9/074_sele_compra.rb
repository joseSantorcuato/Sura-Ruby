titulo1 = "Curso Ruby 74\nJosé Santorcuato Tapia"
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
       selenium.find_element(:xpath,"//*[@id='special-items']/div[4]/div[1]/a[2]").click #selecciono mas info
      #//*[@id="main-products"]/div[1]/div[2]/a
       selenium.find_element(:xpath,"//*[@id='main-products']/div[1]/div[2]/a").click #agrego a carro
       sleep(2)
       selenium.find_element(class: "Cart66ButtonPrimary").click # confirmo agregar
       sleep(2)
       selenium.find_element(:name, "quantity[0]").clear
       sleep(2)
       selenium.find_element(:name, "quantity[0]").send_keys(12)
       sleep(2)
       selenium.find_element(:id,"Cart66CheckoutButton").click #agrego a carro
       selenium.quit
end
end

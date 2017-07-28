
titulo1 = "Curso Ruby 61\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

espacio = " \n"
  puts espacio

  require "selenium-webdriver"
  require "capybara"

  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)#chrome internet_explorer firefox
  end
session = Capybara::Session.new(:selenium)
session.visit "http://calculadora-uf.cl/"
# id 'id' #clase fijarse abajo, cuando es clase lleva # cuando es id no
session.fill_in('input_UF', :with => 3)
sleep 1

valor =  session.find("#result_CLP.result").text #al concatenar id y clase utilizar # y .
conversiona = valor.sub!(/,/, "")
conversionb = '%.3f' % (conversiona)
a_decimal= conversionb.to_f
decimal_sin_coma = (a_decimal * 1000).floor

puts session.find("#result_CLP.result").text #al concatenar id y clase utilizar # y .

sleep 1

session.fill_in('input_CLP', :with => decimal_sin_coma)
sleep 1

session.find("#result_UF.result").text #al concatenar id y clase utilizar # y .puts session.find("#result_CLP.result").text #al concatenar id y clase utilizar # y .
sleep 1

#btn btn-primary entry-account

  Capybara::Selenium::Driver.class_eval do
    def quit
      $stdin.gets
      @browser.quit

    rescue Errno::ECONNREFUSED
      # Browser must have already gone
    end
  end

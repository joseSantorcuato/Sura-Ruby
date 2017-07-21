
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
  Capybara::Selenium::Driver.new(app, :browser => :firefox)#chrome internet_explorer firefox
  end


  session = Capybara::Session.new(:selenium)
  session.visit "http://www.practiceselenium.com/"


  # id 'id' #clase fijarse abajo, cuando es clase lleva # cuando es id no

  session.find('#wsb-button-00000000-0000-0000-0000-000450914890').click
  session.find('#wsb-button-00000000-0000-0000-0000-000451959280').click
  session.fill_in('email', :with => 'mimail@gmail.com')
  session.fill_in('name', :with => 'José S T')
  session.fill_in('address', :with => 'Avda Ruby')
  session.select('Visa', :from=>'card_type') # select from dropdown
  session.fill_in('card_number', :with => '0987654321')
  session.fill_in('cardholder_name', :with => 'Ruby tests')
  session.fill_in('verification_code', :with => '1234567890')

  session.find('.btn.btn-primary').click
  puts "Presiona ENTER para cerrar el browser"

  if session.has_content?("Menu")
    puts "Primer Contenido encontrado!"
  else
    puts "El contenido no existe, se cerrará"
    exit(-1)
  end
   if session.has_content?("Green tea is made from the leaves from Camellia sinensis that have undergone minimal oxidation during processing. Green tea originated in China, but it has become associated with many cultures throughout Asia. Green tea has recently become relatively widespread in the West where black tea has been the traditionally consumed tea.")
    puts "Segundo contenido encontrado!"
  else
    puts "El contenido no existe, se cerrará"
    exit(-1)
  end







  Capybara::Selenium::Driver.class_eval do
    def quit
      $stdin.gets
      @browser.quit

    rescue Errno::ECONNREFUSED
      # Browser must have already gone
    end
  end

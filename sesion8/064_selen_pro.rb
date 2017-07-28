titulo1 = "Curso Ruby 62\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

espacio = " \n"
  puts espacio
  require "selenium-webdriver"
  require "capybara"
  require_relative "./claseHorario"


  puts "Presiona ENTER para cerrar el browser"


  #Para no tener errores en IE se recomienda ir a opciones d einternet/seguridad y setear todo igual

  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)#chrome internet_explorer firefox
  end


  session = Capybara::Session.new(:selenium)
  session.visit "http://www.practiceselenium.com/"


  # id 'nada' #clase

  def reporte(mensaje_error)
    (Thread.current[:errors] ||= []) << "#{mensaje_error}"
  end

  begin

session.find('#wsb-button-00000000-0000-0000-0000-000450914890').click
session.find('wsb-button-00000000-0000-0000-0000-000451959280').click #error es con # no la encontrara


      session.fill_in('email', :with => 'mimail@gmail.com')


    rescue => error
      reporte("#{error.class} and #{error.message}")
    end


    def log_errores
  hora_error = Horario.new()
  File.open('error.txt', 'a') do |file|
    (Thread.current[:errors] ||= []).each do |error|


      file.puts error+"#{hora_error.display}"
    end
  end
end



  p Thread.current[:errors] #=> ["RuntimeError and an error!"]




at_exit { log_errores }




  Capybara::Selenium::Driver.class_eval do
    def quit
      $stdin.gets
      @browser.quit

    rescue Errno::ECONNREFUSED
      # Browser must have already gone
    end
  end

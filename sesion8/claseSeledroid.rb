require "selenium-webdriver"
require "capybara"


class Seledroid




  def ejecutar


      Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)#chrome internet_explorer firefox

      

      end




  end
end

# make an object
# Objects are created on the heap
#d = Horario.new()


#d.display

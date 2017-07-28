titulo1 = "Curso Ruby 80\nJosé Santorcuato Tapia"
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

   def test_prueba
   home
   seleccion_producto
   llenar_formulario
   end

    private #metodos para abreviar código

     def buscar(elemento, tipo=:css)
        @selenium.find_element(tipo, elemento)
      end


      def textos(texto, elemento, tipo=:css)
         buscar(elemento, tipo).send_keys(texto)
      end

      def click(elemento, tipo=:css)
         buscar(elemento, tipo).click
      end

      def home
      @selenium.get("http://awful-valentine.com/")

      end

      def seleccion_producto
        click('.special-item a[href*="our-love-is-special"].more-info')
      end

      def llenar_formulario

        textos("José", "author", :id)

      sleep 3
      end





   end

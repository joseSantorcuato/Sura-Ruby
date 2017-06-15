require 'gosu'# requiere gema gosu
bienvenida = "IMAGEN - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida

WIDTH, HEIGHT = 640, 480
PADDING = 20

espacio = " \n"
  puts espacio
class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Pantalla Gosu"

  text =
      "<b>Curso Ruby 2017</b>
       Imágenes"

  text.gsub! /^ +/, ''

  @text = Gosu::Image.from_text text, 20, :width => WIDTH - 2 * PADDING
  @background_image = Gosu::Image.new("media/waltercarlos.jpg", :tileable => true)




end

  def update
    # ...
  end

  def draw

     @text.draw PADDING, PADDING, 0
     @background_image.draw(0, 0, 0)

   end
end

Tutorial.new.show

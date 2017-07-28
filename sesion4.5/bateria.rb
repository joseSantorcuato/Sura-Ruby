require 'gosu'# requiere gema gosu
titulo1 = "Curso Ruby AUDIO\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

WIDTH, HEIGHT = 640, 480
PADDING = 20

espacio = " \n"
  puts espacio
class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Audio Gosu"





    @beepa = Gosu::Sample.new("drums/kick.wav")
    @beepb = Gosu::Sample.new("drums/snare.wav")
    @beepc = Gosu::Song.new(self, 'drums/triangulo.wav')



    text =
      "<b>Batería</b>

       José Santorcuato Tapia
       santorcuato76@gmail.com
       CHILE 2017"

  text.gsub! /^ +/, ''

  @text = Gosu::Image.from_text text, 20, :width => WIDTH - 2 * PADDING

  @background_image = Gosu::Image.new("marioa.jpg", :tileable => true)





  end



  def update
    def button_down(id)
      puts id
      if id == 4
        @beepa.play

        puts "ENTER"
        #close sirve para por ejemplo cerrar la ventana

      end
      if id == 22
        @beepb.play
        puts "ENTER"
        #close sirve para por ejemplo cerrar la ventana

      end

      if id == 7
        @beepc.play
        puts @beepc.playing?

        puts "ENTER"
        #close sirve para por ejemplo cerrar la ventana

      end

      if id == 9

        close 

      end
    end
    # ...
  end

  def draw

     @text.draw PADDING, PADDING, 0
     @background_image.draw(0, 0, 0)





   end


end




Tutorial.new.show

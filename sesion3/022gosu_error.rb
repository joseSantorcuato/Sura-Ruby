require 'rubygems'
require 'json'
require 'pp'
require 'nokogiri'# requiere gema gosu
require 'gosu'


titulo1 = "Curso Ruby 22\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

WIDTH, HEIGHT = 640, 480
PADDING = 20

espacio = " \n"
  puts espacio


class Sura < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "SURA"
    @beep = Gosu::Sample.new("media/beep.wav")

end

  def update
    text = "Prueba error"

    text.gsub! /^ +/, ''


    @text = Gosu::Image.from_text text, 45
    #@text = Gosu::Image.from_text text, 45, :width => WIDTH - 2 * PADDING
    # ...
  end

  def draw

     @text.draw PADDING, PADDING, 0
     @beep.play(volume = 1, speed = 1, looping = false)


   end
end

Sura.new.show

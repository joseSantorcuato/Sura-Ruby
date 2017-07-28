require 'rubygems'
require 'json'
require 'pp'
require 'nokogiri'#
require 'gosu'


titulo1 = "Curso Ruby 20\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


class Sura < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "SURA"
  end

  def update
    # ...
  end

  def draw
    # ...
  end
end

Sura.new.show

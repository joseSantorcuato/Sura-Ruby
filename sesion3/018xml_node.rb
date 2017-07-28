require 'rubygems'
require 'json'
require 'pp'
require 'nokogiri'# requiere gema gosu


titulo1 = "Curso Ruby 18\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



ingreso = gets.chomp
valida = ingreso.to_i


doc = Nokogiri::XML(File.open("tv80.xml"))

#puts doc.xpath("//character")

#puts doc.xpath("//dramas//character")[1]

puts doc.xpath("//sitcom//name")[0]

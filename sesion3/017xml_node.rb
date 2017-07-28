require 'rubygems'
require 'json'
require 'pp'
require 'nokogiri'# requiere gema gosu


titulo1 = "Curso Ruby 17\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3





doc = Nokogiri::XML(File.open("tv80.xml"))
puts doc.xpath("//character")

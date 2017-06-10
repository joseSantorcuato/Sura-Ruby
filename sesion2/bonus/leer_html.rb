require 'rubygems'
require 'open-uri'


titulo1 = "Curso Ruby Leer HTML\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


html = open('http://lun.cl').read
puts html.length
puts html

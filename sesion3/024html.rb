require 'rubygems'
require 'nokogiri'
require 'open-uri'


titulo1 = "Curso Ruby 24\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3




html = open('https://es.wikipedia.org/wiki/Alan_Kay').read
puts html

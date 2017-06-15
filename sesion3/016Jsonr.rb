require 'rubygems'
require 'json'
require 'pp'

titulo1 = "Curso Ruby 16\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

json = File.read('pais.json')
obj = JSON.parse(json)
pp obj

candidato = obj['Santiago'][1]
puts candidato
pais = obj['Pais']
puts pais

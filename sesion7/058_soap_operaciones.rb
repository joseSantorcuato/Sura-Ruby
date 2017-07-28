require 'rubygems'
require 'savon'
require 'pp'

titulo1 = "Curso Ruby 058\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

bienvenida = "SOAP - OPERACIONES -\nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


client = Savon.client(wsdl: "http://www.paginahackeada.org/soap/soap_servidor.php?wsdl")
numa = client.operations  #imprime métodos que acepta el doc soap
pp numa

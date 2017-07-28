require 'rubygems'
require 'savon'
require 'pp'
require 'nokogiri'

titulo1 = "Curso Ruby 059\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


client = Savon.client(wsdl: "http://www.paginahackeada.org/soap/soap_servidor.php?wsdl")
numa = client.operations  # => [:authenticate, :find_user]
pp numa

respuesta_uno = client.call(:cliente_get_cliente) do

message type: "Valeria"


end

respuesta_dos = client.call(:cliente_suma) do
message a: 1, b: 4
end


puts respuesta_uno
puts respuesta_dos

respuesta = respuesta_uno.to_xml


filename = 'soap.xml'
doc = Nokogiri::XML(respuesta)
# ... make changes to doc ...
File.write(filename, doc.to_xml)

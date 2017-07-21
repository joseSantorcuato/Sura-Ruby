require 'rubygems'
require 'mysql2'



titulo1 = "Curso Ruby 41\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



client = Mysql2::Client.new(:host => "localhost", :username => "tusuario", :password => "tupass", :database => 'tubase')

results = client.query("UPDATE registros SET nom = 'Paloma', fecha = '2017-06-22', hora = '10:00:00' WHERE id = 1")
registro = "Registro actualizado exitosamente!"
puts registro

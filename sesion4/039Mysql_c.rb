require 'rubygems'
require 'mysql2'



titulo1 = "Curso Ruby 39\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "", :database => 'rubysql')

results = client.query("INSERT INTO registros (nom, fecha, hora) VALUES  ('Alexis', '2017-05-31', '19:00:00')")
registro = "Registro ingresado exitosamente!"
puts registro

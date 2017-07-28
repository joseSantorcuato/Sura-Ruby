require 'rubygems'
require 'mysql2'



titulo1 = "Curso Ruby 40\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



client = Mysql2::Client.new(:host => "localhost", :username => "tusuario", :password => "tupass", :database => 'tubase')

results = client.query("DELETE  from registros WHERE nom = 'Alexis'")
registro = "Registro eliminado exitosamente!"
puts registro

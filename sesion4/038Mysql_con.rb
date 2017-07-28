require 'rubygems'
require 'mysql2'

titulo1 = "Curso Ruby 38\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



client = Mysql2::Client.new(:host => "localhost", :username => "tusuario", :password => "tupass", :database => 'tubase')

results = client.query("SELECT * FROM registros")

results.each do |row|

puts row["id"]
puts row["nom"]
puts row["fecha"]
puts row["hora"]
end

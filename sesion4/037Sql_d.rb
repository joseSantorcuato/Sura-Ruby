require 'rubygems'
require 'dbi'
require 'pp'


titulo1 = "Curso Ruby 37\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

server = 'TUPC\SQLEXPRESS'

database = 'usuarios'

conn = DBI.connect("DBI:ODBC:DRIVER={SQL Server};Server=#{server};Database=#{database};Trusted_Connection=yes") #==> sets up the connection




consulta = conn.prepare("DELETE from Persona  WHERE nombre = 'arturito'")

  consulta.execute

     puts "Registro ha sido eliminado exitosamente!"

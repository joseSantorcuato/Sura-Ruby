require 'rubygems'
require 'dbi'
require 'pp'


titulo1 = "Curso Ruby 36\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

server = 'TUPC\SQLEXPRESS'

database = 'usuarios'

conn = DBI.connect("DBI:ODBC:DRIVER={SQL Server};Server=#{server};Database=#{database};Trusted_Connection=yes") #==> sets up the connection




    consulta = conn.prepare( "INSERT INTO Persona(nombre, apellido, rut, usua, pass)
           VALUES (?, ?, ?, ?, ?)" )
     consulta.execute('Arturo', 'Vidal', 8, 'kingarturo', 'ilovebielsa')
     consulta.execute('Gary', 'Medel', 17, 'pitbull', 'quepasachorizo')

     puts "Registro ha sido ingresado exitosamente!"

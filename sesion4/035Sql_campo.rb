require 'rubygems'
require 'dbi'
require 'pp'


titulo1 = "Curso Ruby 35\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

server = 'HACKINGPC\SQLEXPRESS'

database = 'usuarios'

conn = DBI.connect("DBI:ODBC:DRIVER={SQL Server};Server=#{server};Database=#{database};Trusted_Connection=yes") #==> sets up the connection

puts conn.connected?



puts conn.tables

    consulta = conn.select_one('select * from Persona where id = 3')

        p consulta[2] #permite seleccionar el campo


    # Close the statement handle when done
    #consulta.finish

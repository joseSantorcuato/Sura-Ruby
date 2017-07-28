require 'rubygems'
require 'dbi'
require 'pp'


titulo1 = "Curso Ruby 33\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

server = 'TUPC\SQLEXPRESS'

database = 'usuarios'

conn = DBI.connect("DBI:ODBC:DRIVER={SQL Server};Server=#{server};Database=#{database};Trusted_Connection=yes") #==> sets up the connection

puts conn.connected?
#conn.columns "Persona"


puts conn.tables
# Select all rows from simple01
    consulta = conn.prepare('select nombre from Persona where id = 1')
    consulta.execute

    # Print out each row
    while row=consulta.fetch do
        p row
    end

    # Close the statement handle when done
    consulta.finish

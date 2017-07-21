
titulo1 = "Curso Ruby 051\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'rubygems'
require 'spreadsheet'

Spreadsheet.client_encoding = 'UTF-8'

xls = Spreadsheet::Workbook.new
hoja = xls.create_worksheet :name => 'Prueba XLS'

formato_moneda = Spreadsheet::Format.new :number_format => "#,###"
formato_fecha = Spreadsheet::Format.new :number_format => 'DD.MM.YYYY'

hoja.column(0).width = 25 #ancho de columna
hoja.column(1).width = 25
hoja.column(2).width = 25
hoja.column(3).width = 25



hoja.column(2).default_format = formato_moneda #formatea la columna 1, b como moneda
hoja.column(3).default_format = formato_fecha  #formatea la columna 2, c como fecha

hoja[0,0] = Spreadsheet::Link.new 'http://www.arselectronicachile.blogspot.com', 'Ir a AEC'

hoja.row(0).push "Columna 1", 9990, DateTime.now #fuerza a la primera columna a llevar el texto Columna 1



xls.write 'prueba.xls'

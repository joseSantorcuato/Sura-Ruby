
titulo1 = "Curso Ruby 047\nJosé Santorcuato Tapia"
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

money_format = Spreadsheet::Format.new :number_format => "'#,###"
date_format = Spreadsheet::Format.new :number_format => 'DD.MM.YYYY'

# set default column formats
hoja.column(1).default_format = money_format
hoja.column(2).default_format = date_format
hoja.row(0).push "Hola!", 9990, DateTime.now

xls.write 'prueba.xls'

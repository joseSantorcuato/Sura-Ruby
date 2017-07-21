
titulo1 = "Curso Ruby 049\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'docx'

doc = Docx::Document.open('prueba.docx')

primera_tabla = doc.tables[0]
puts primera_tabla.row_count
puts primera_tabla.column_count
puts primera_tabla.rows[0].cells[0].text
puts primera_tabla.columns[0].cells[0].text


doc.paragraphs.each do |lectura|
  puts lectura.to_html
end

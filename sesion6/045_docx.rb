
titulo1 = "Curso Ruby 045\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'docx'

doc = Docx::Document.open('prueba.docx')
doc.paragraphs.each do |lectura|
  puts lectura
end

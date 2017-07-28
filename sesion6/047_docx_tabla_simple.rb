
titulo1 = "Curso Ruby 047\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'docx'

doc = Docx::Document.open('prueba.docx')




doc.tables.each do |table|
  table.rows.each do |row| # # Iteracion sobre fila
    row.cells.each do |cell|
      puts cell.text
    end
  end
end

=begin

  table.columns.each do |column| # Iteracion sobre columna
    column.cells.each do |cell|
      puts cell.text
    end
  end
end

=end

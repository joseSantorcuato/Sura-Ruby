
titulo1 = "Curso Ruby 048\nJosé Santorcuato Tapia"
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


doc.tables.each do |table| #Iteracion sobre titulo columna
  table.rows.each do |row| # Iteracion sobre fila
    row.cells.each do |cell| #Iteracion sobre celda
      puts cell.text
    end
  end

  table.columns.each do |column| #  Iteracion sobre fila
    column.cells.each do |cell|
      puts cell.text
    end
  end
end

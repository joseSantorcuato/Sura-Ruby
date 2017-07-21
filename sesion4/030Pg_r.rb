

titulo1 = "Curso Ruby 30\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


  require 'pg'

begin

  con = PG.connect :hostaddr=>"127.0.0.1", :port=>5432, :dbname => 'tubase', :user => 'tusuario', :password => 'tupass'
  puts con.server_version
  puts con.server_version

  rs = con.exec "SELECT * FROM datos LIMIT 5"

   rs.each do |row|
   puts "%s %s %s %s %s" % [ row['nombre'], row['apellido_p'], row['apellido_m'], row['edad'], row['fecha_ingreso']  ]
 end

rescue PG::Error => e

  puts e.message

ensure

  con.close if con

end

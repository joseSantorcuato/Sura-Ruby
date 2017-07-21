

titulo1 = "Curso Ruby 28\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

  require 'pg'

begin

  con = PG.connect :hostaddr=>"127.0.0.1", :port=>5432, :dbname => 'tubase', :user => 'tusuario', :password => 'tupass'
    puts con.server_version

rescue PG::Error => e

    puts e.message

ensure

    con.close if con

end



titulo1 = "Curso Ruby 31\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


  require 'pg'

begin

  con = PG.connect :hostaddr=>"127.0.0.1", :port=>5432, :dbname => 'rubypg', :user => 'userpg', :password => 'bobmarley2'
  puts con.server_version



      rs = con.exec "UPDATE datos SET nombre = 'Patricia' WHERE nombre = 'Lucia'"


  rescue PG::Error => e

      puts e.message

  ensure

      con.close if con

  end

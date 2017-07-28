titulo1 = "Curso Ruby 10\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3




  texto = "Ingresa un número  y presiona enter"
  puts texto
  num = gets.chomp
  entero = num.to_i



if entero > 10
  puts "Te pasaste!"
    elsif entero < 10
      puts "Acércate al número!"
    else
      puts "Acertaste!"

    end

titulo1 = "Curso Ruby 13\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



textos = "Ingresa un número y presiona enter"
puts textos

numero1 = gets.chomp

textos2 = "Ingresa otro número y presiona enter"
puts textos2

numero2 = gets.chomp

entero1 = numero1.to_i
entero2 = numero2.to_i



for i in(entero1..entero2)
    puts i
end

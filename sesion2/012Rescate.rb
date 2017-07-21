titulo1 = "Curso Ruby 12\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


principal = "SUMA DE DE NÚMEROS"
puts principal

textos = "Ingresa un número y presiona enter"
puts textos

numero1 = gets.chomp

textos2 = "Ingresa otro número y presiona enter"
puts textos2

numero2 = gets.chomp

entero1 = numero1.to_i
entero2 = numero2.to_i

def suma(numero1, numero2)

  puts numero1+numero2
  return 'funcion terminada'
end

puts(suma(entero1,entero2))


def errores
  begin
  1/0
  #1/q
  rescue => mierr
  puts mierr.message
  end
end

puts(errores)
puts "Sigo ejecutando"


=begin
rescue => error
puts err.message
=end

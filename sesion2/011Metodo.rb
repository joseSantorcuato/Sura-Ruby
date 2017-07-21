titulo1 = "Curso Ruby 11\nJosé Santorcuato Tapia"
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
    return 'correcto'
  end

puts(suma(entero1,entero2))

  def nada
    puts "Soy la función texto y no hago nada más que imprimir este texto"
  end

  puts nada



=begin

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



def metodo
  begin
    puts 'Estoy antes del raise'
    raise 'Un error ha ocurrido' # simulamos un error
    puts 'Estoy después del raise'
  rescue
    puts 'Estoy rescatado del error.'
  end
  puts 'Estoy después del bloque'
end
=end

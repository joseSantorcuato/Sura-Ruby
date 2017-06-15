titulo1 = "Curso Ruby 16\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

inicio = "Bienvenido a la creación de su ficha personal\nIngrese nombre:"
puts inicio
  nombre = gets
textoEdad ="Ingrese edad:\n"
puts textoEdad
  edad = gets
textoRut ="Ingrese RUT:\n"
puts textoRut
  rut = gets




txt = File.new("#{rut}.txt", "w")
txt.puts("Nombre: #{nombre}\nEdad: #{edad}\nRut: #{rut} ")

txt.close

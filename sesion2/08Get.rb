titulo1 = "Curso Ruby 8\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


texto = "Por favor, ingresa tu nombre y presiona enter"
puts texto
nombre = gets

pregunta = "\nVamos a probar la diferencia entre chomp y gets\nPresiona la tecla s para probar, cualquier otra para salir"
puts pregunta
respuesta = gets#.chomp


   if respuesta == "s"


      registro = "Teclas s presionada"
      puts registro

   else
      registrono = "Se ha presionado tecla diferente a s"

      puts registrono



   end
=begin

     Esta solución de usuar gets devolverías el \n (salto de carro) del enter,
     no podría evaluar si es "s". el agregar chomps hace que devuelva solo lo ingresado.

     texto = "Por favor, ingrese su nombre"
     puts texto
     nombre = gets
     pregunta = "\n¿Quieres guardar un registro en la base de datos?\nSe guardará tu nombre, fecha y hora del registro\nPresiona s para guardar, n para no guardar registro"
     puts pregunta
     respuesta = gets
     uno = respuesta

      if uno == "s"


     registro = "Registro ingresado"
      puts registro

      else
        registrono = "Registro no ingresado"
        puts registrono


      end
=end

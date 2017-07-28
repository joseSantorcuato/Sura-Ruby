titulo1 = 'Curso Ruby 4\nJosé Santorcuato Tapia'
titulo2 = '2017'
titulo3 = 'CHILE'


puts titulo1
puts titulo2
puts titulo3



tiempo = Time.new


hora = tiempo.hour
minuto = tiempo.min
segundo = tiempo.sec
hora_completa = "#{hora}:#{minuto}:#{segundo}"

puts hora_completa

ano = tiempo.year
mes = tiempo.month
dia = tiempo.day
fecha_completa = "#{dia}/#{mes}/#{ano}"

puts fecha_completa

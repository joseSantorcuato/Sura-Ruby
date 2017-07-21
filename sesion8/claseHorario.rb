class Horario




  def display
    tiempo = Time.new


    hora = tiempo.hour
    minuto = tiempo.min
    segundo = tiempo.sec
    hora_completa = "#{hora}:#{minuto}:#{segundo}"



    ano = tiempo.year
    mes = tiempo.month
    dia = tiempo.day
    fecha_completa = "#{dia}/#{mes}/#{ano}"

    return "Hora y fecha del error #{hora_completa}#{fecha_completa}"
  end
end

# make an object
# Objects are created on the heap
#d = Horario.new()


#d.display

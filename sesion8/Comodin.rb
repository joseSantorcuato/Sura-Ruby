class Comodin

def muestra_fecha
    tiempo = Time.new
    hora = tiempo.hour
    minuto = tiempo.min
    segundo = tiempo.sec
    hora_completa = "#{hora}:#{minuto}:#{segundo}"
    ano = tiempo.year
    mes = tiempo.month
    dia = tiempo.day
    fecha_completa = "#{dia}/#{mes}/#{ano}"

    return "Hora y fecha  #{hora_completa} #{fecha_completa}"
  end



  def c_a_f(celsius)
    conversion = ((celsius*9/5)+32)
    return conversion
  end

  def guardo_txt(cadena)
    conversion = ((celsius*9/5)+32)
    return conversion
  end







end

# make an object
# Objects are created on the heap
#d = Horario.new()


#d.display

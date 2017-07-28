require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'



titulo1 = "Curso Ruby 053\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



url = 'https://api.nasa.gov/planetary/apod?api_key=sS6kj78ivO1E48s9D8wMZhd9k9GKCTCTu0wiPNo0'
response = RestClient.get(url)

=begin
date
explanation
hdurl
media_type
service_version
title
url

=end

#cuerpo = JSON.parse(response)


cuerpo = JSON.parse(response)

#cuerpo = JSON.parse(response)["date"] #imprimira date que corresponde a ubicacion 0 del array


puts cuerpo


=begin

codigo = respuesta.code #imprime si conexión se ha establecido 200 es ok
cabezal = respuesta.headers #headers, datos del sistema, servicio y json
cuerpo = respuesta.body #respuesta a la ejecución del get con parámetro uid=1


pp codigo #imprimen, puede usuarse puts
pp cabezal

puts  cuerpo

=end

=begin
respuesta#code: La respuesta hhtp
respuesta#body: La respuesta en un string
respuesta#headers: UN hash de los headers
respuesta#raw_headers: Un hash crudo, sin procesar
respuesta#cookies: UN hash para las cookies del servidor
=end

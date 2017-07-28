require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'


titulo1 = "Curso Ruby 055\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3



#url = 'https://api.nasa.gov/planetary/apod?api_key=sS6kj78ivO1E48s9D8wMZhd9k9GKCTCTu0wiPNo0&count=1'


url = 'https://api.nasa.gov/planetary/apod?api_key=tuApi'

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
cuerpo = JSON.parse(response).values[2] #0 = titulo, 1= fecha, 2= texto, 3 = url , etc

pp cuerpo

valor = cuerpo
puts valor

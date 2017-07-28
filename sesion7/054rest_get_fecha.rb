require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'


titulo1 = "Curso Ruby 054\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3


url = 'https://api.nasa.gov/planetary/apod?api_key=tuApi'
RestClient.proxy = 'http://nombreusuario:contraseña@mataquito.ing.cl:8080'
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


cuerpo = JSON.parse(response)["date"] #imprimira date que corresponde a ubicacion 0 del array


puts cuerpo

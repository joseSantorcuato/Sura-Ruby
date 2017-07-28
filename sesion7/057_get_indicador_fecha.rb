require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'


titulo1 = "Curso Ruby 057\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

#http://mindicador.cl/


#url = 'http://mindicador.cl/api/uf/2017'
url = 'http://mindicador.cl/api/uf/22-01-2004'
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

pp cuerpo

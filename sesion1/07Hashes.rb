titulo1 = "Curso Ruby 7\nJosé Santorcuato Tapia"
titulo2 = '2017'
titulo3 = 'CHILE'


puts titulo1
puts titulo2
puts titulo3

#Hashes

#len = Hash.new

len = { 1968 => "Logo", 1972 => "Smalltalk", 1978 => "SQL", 1980 =>
"C++", 1984 => "Matlab", 1987 => "Perl", 1991 => "Python", 1993 => "Ruby!", 1995 => "Php" }
puts len.has_key? 1938
puts len.has_key? 1993
puts len.has_value? "Ruby"
puts len[1972]
puts len.keys
puts len.values
puts len.values_at 1968
puts len.key "SQL" #key? #index
puts len.select { |key,val| key < 1980 }

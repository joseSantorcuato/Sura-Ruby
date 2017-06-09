titulo1 = "Curso Ruby 15\nJosé Santorcuato Tapia\rSura"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

puts titulo1, titulo2, titulo3

arr = ["Mane, Carolina, Claudia, Marco, Sebastián, Eduardo, Freddy"]

arr.each do |i|
   puts i
end

nums = %w[uno dos tres cuatro cinco seis siete ocho]
str = ""
nums.reverse_each { |nums| str += "#{nums} " }
nums.each { |nums| str += "#{nums} " }


p str #=> "sixth fifth fourth third second first "

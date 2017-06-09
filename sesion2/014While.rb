titulo1 = "Curso Ruby 14\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

cuenta = 0



  while cuenta <= 1


    i = 0


    while  i <= 59 do

    i += 1
    sleep(1)#observar que sucede si no ubicamos este sleep
    puts "#{i} #{"+"}"

    end



    while  i >= 1 do

    i -= 1
    sleep(1)#observar que sucede si no ubicamos este sleep
    puts "#{i} #{"-"}"

    end





  end

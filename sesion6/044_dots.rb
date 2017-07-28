require 'gruff'
titulo1 = "Curso Ruby 044\nJosé Santorcuato Tapia"
titulo2 = "2017"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3
g = Gruff::Dot.new

#Area, Bar, Bezier, Bullet, Dot, Line, Net, PhotoBar, Pie, Scatter, Scene, SideBar, Spider, StackedArea, StackedBar

#http://www.rubydoc.info/github/topfunky/gruff/frames

g.title = 'Prueba librería Gruff, puntos!'
g.labels = { 0 => 'sesión 1', 1 => 'Sesión 2', 2 => 'Sesión 3', 3 => 'sesión 4', 4 => 'sesión 5' }
g.data :Mané, [25, 36, 86, 39, 25]
g.data :Carolina, [80, 54, 67, 54, 68]
g.data :Claudia, [22, 29, 35, 38, 36]
g.data :Javiera, [95, 95, 95, 90, 85]
g.data :MMagdalena, [90, 34, 23, 12, 78]

g.write('puntos.png')

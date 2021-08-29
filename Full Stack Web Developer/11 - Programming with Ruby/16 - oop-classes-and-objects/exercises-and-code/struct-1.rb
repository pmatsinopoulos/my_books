# File:: struct-1.rb
#
Car = Struct.new(:make, :model, :color)

car = Car.new('Aston Martin', 'Rapide', 'Blue')

puts "car members: #{car.members}"

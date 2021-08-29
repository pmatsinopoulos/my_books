# File: open-1.rb
#
class Car
  attr_accessor :make, :model
end

car = Car.new
car.make = 'Aston Martin'
car.model = 'Rapide'

class Car
  attr_accessor :color
end

car.color = 'Blue'

puts "Car: #{car.inspect}"

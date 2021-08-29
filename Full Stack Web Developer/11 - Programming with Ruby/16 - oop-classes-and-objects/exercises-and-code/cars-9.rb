# File:: cars-9.rb
#
class Car
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  attr_accessor :make, :model, :color
end

car = Car.new('Aston Martin', 'Rapide', 'Blue')
puts "car instance variables: #{car.instance_variables}"

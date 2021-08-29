# File: car-1.rb
#
class Car
  attr_accessor :make, :model, :color

  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
    @engine_on = false
  end

  def ignite
    @engine_on = true
  end
end

car = Car.new('Aston Martin', 'Rapide', 'Blue')

puts car.inspect

puts "About to ignite..."

car.ignite

puts car.inspect


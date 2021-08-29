# File: car-3.rb
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

  def switched_on?
    @engine_on
  end
end

car = Car.new('Aston Martin', 'Rapide', 'Blue')

puts "About to ignite..."

car.ignite

puts "Is car switched on?: #{car.switched_on?}"


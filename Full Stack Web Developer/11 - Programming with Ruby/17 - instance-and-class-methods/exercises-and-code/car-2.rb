# File: car-2.rb
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

cars = [Car.new('Aston Martin', 'Rapide', 'Blue'),
        Car.new('Chevrolet', 'Camaro', 'Black')]

puts cars.inspect

puts "About to ignite Chevrolet..."

cars.find {|car| car.make == 'Chevrolet'}.ignite

puts cars.inspect


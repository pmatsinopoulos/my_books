# File: car-4.rb
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

cars = [Car.new('Aston Martin', 'Rapide', 'Blue'),
        Car.new('Chevrolet', 'Camaro', 'Black')]

puts "About to ignite Chevrolet..."

cars.find {|car| car.make == 'Chevrolet'}.ignite

class CarPresenter
  attr_reader :car

  def initialize(car)
    @car = car
  end

  def switched_on
    car.switched_on? ? 'Yes' : 'No'
  end

  def present
    "Car: #{car.model}, Switched On?: #{switched_on}"
  end
end

puts cars.map {|car| CarPresenter.new(car).present}.join("\n")


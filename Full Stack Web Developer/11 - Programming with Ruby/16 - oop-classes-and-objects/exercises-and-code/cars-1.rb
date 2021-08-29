# File: cars-1.rb
#
class Car
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end
end

car1 = Car.new('Aston Martin', 'Cygnet', 'Red')

p car1

car2 = Car.new('Aston Martin', 'Rapide', 'Blue')

p car2

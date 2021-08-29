# File:: cars-11.rb
#
class Car
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end
end

car = Car.new('Aston Martin', 'Rapide', 'Blue')

car.instance_variable_set(:@color, 'White')

car.instance_variables.each do |instance_variable|
  human_name_for_variable = instance_variable.to_s.delete(':@').capitalize
  variable_value = car.instance_variable_get(instance_variable)

  puts "Car #{human_name_for_variable}: #{variable_value}"
end

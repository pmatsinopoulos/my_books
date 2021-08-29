# File: cars-2.rb
#
class Car
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  def make
    @make
  end

  def model
    @model
  end

  def color
    @color
  end
end

car1 = Car.new('Aston Martin', 'Cygnet', 'Red')
car2 = Car.new('Aston Martin', 'Rapide', 'Blue')

def print_car_data(cars)
  column_size = 30
  number_of_columns = 3
  puts "#{'Make'.ljust(column_size - 1)}|#{'Model'.ljust(column_size - 1)}|#{'Color'.ljust(column_size)}"
  puts '=' * (column_size * number_of_columns)
  cars.each do |car|
    puts "#{car.make.ljust(column_size - 1)}|#{car.model.ljust(column_size - 1)}|#{car.color.ljust(column_size)}"
  end
end

print_car_data [car1, car2]

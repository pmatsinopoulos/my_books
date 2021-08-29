# File: cars-2-improved.rb
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

def print_values(values, column_size)
  puts values.
         map {|column_header| column_header.ljust(column_size)}.
         join('|')
end

def print_car_data(cars)
  column_size = 30
  number_of_columns = 3

  print_values ['Make', 'Model', 'Color'], column_size

  puts '=' * (column_size * number_of_columns + number_of_columns - 1)

  cars.each do |car|
    print_values ["#{car.make}", "#{car.model}", "#{car.color}"], column_size
  end
end

print_car_data [car1, car2]

# File: cars-6.rb
#
class Car
  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  attr_reader :make, :model, :color
  attr_writer :make, :model, :color
end

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

def ask_car_new_color
  print 'Which car color has changed? (1/2): '
  car_changed = gets.to_i
  if car_changed < 0 || car_changed > 2
    puts 'This is not a valid car number'
    exit 1 # program exits
  end

  print 'Which is the new color? '
  new_color = gets.chomp.strip

  [car_changed, new_color]
end

cars = [Car.new('Aston Martin', 'Cygnet', 'Red'),
        Car.new('Aston Martin', 'Rapide', 'Blue')]

print_car_data cars

puts # just print an empty line

car_number, new_color = ask_car_new_color
cars[car_number - 1].color = new_color # set the new color

puts # just print an empty line

print_car_data cars

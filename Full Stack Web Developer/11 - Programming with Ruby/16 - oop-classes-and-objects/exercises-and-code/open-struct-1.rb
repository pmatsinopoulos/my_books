# File: open-struct-1.rb
#
require 'ostruct'

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

cars = [OpenStruct.new, OpenStruct.new]

cars.each do |car|
  puts "Car: Make: #{car.make}, Model: #{car.model}, Color: #{car.color}"
end

# Give the cars some values

[['Aston Martin', 'Cygnet', 'Red'],
 ['Aston Martin', 'Rapide', 'Blue']].
    each_with_index do |attributes, index|
  cars[index].make = attributes[0]
  cars[index].model = attributes[1]
  cars[index].color = attributes[2]
end

print_car_data cars

puts cars[0].instance_variables

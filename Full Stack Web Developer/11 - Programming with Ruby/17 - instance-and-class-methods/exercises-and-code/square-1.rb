# File: square-1.rb
#
class Square
  @@number_of_sides = 4

  def initialize(side_width)
    @side_with = side_width
  end

  def perimeter
    @side_with * @@number_of_sides
  end
end

square1 = Square.new(5)
square2 = Square.new(10)

puts "Square 1: #{square1.inspect}"
puts "Perimeter of Square1 is: #{square1.perimeter}"

puts "Square 2: #{square2.inspect}"
puts "Perimeter of Square2 is: #{square2.perimeter}"

puts "#{Square.class_variables}"

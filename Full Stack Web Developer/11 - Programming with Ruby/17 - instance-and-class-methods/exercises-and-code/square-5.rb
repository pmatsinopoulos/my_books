# File: square-5.rb
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

s = Square.new(5)

puts s.perimeter

def Square.number_of_sides
  Square.class_variable_get(:@@number_of_sides)
end

puts Square.number_of_sides

# File: self-2.rb
#
class Square
  @@number_of_sides = 4

  def initialize(side_width)
    @side_with = side_width
  end

  def perimeter
    @side_with * @@number_of_sides
  end

  class << self
    def number_of_sides
      puts "self inside class method number_of_sides: #{self}"
      @@number_of_sides
    end

    def number_of_sides=(value)
      @@number_of_sides = value
    end
  end
end

Square.number_of_sides

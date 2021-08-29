# File: point.rb
#
class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def to_s
    "(x = #{x}, y = #{y})"
  end
end

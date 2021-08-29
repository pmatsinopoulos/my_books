# File: triangle.rb
#
class Triangle < Shape
  def initialize(first:, second:, third:)
    @first = first
    @second = second
    @third = third
  end

  def draw(width:, height:)
    super
    puts "My first point is #{first}, my second point is #{second} and my third point is #{third}"
  end

  private

  attr_reader :first, :second, :third
end

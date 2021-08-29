# File: circle.rb
#
class Circle < Shape
  def initialize(radius:, center:)
    @radius = radius
    @center = center
  end

  def draw(width:, height:)
    super
    puts "My radius will be: #{radius} and my center will be: #{center}"
  end

  private

  attr_reader :radius, :center
end

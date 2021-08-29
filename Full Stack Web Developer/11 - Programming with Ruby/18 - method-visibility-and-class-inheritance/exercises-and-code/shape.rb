# File: shape.rb
#
class Shape
  def initialize
    raise 'This should not be instantiated'
  end

  def draw(width:, height:)
    puts "I am a #{what_am_i} and I will draw myself within the area with width: #{width} and height #{height}"
  end

  private

  def what_am_i
    self.class
  end
end

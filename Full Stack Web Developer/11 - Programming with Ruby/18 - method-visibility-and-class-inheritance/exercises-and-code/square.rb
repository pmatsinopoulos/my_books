# File: square.rb
#
class Square < Shape
  def initialize(top_left:, bottom_right:)
    @top_left = top_left
    @bottom_right = bottom_right
  end

  def draw(width:, height:)
    super
    puts "My top left corner is #{top_left} and my bottom right corner is #{bottom_right}"
  end

  private

  attr_reader :top_left, :bottom_right
end

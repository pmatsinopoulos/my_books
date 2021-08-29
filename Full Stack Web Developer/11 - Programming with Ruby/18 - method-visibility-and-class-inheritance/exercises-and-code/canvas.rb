# File: canvas.rb
#
class Canvas
  def initialize(width:, height:)
    @width = width
    @height = height
    @shapes = []
  end

  def add(shape)
    @shapes << shape
    shape.draw(width: width, height: height)
  end

  private

  attr_reader :width, :height
end

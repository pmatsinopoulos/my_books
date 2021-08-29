class Point
  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    "#{@x}, #{@y}"
  end
end

class Ball
  def initialize(position)
    @position = position
  end

  def move_to(position)
    puts "I will move from position #{@position} to new position: #{position}"
    @position = position
  end
end

position = Point.new(0, 0)
ball = Ball.new(position)

position = Point.new(30, 30)
ball.move_to(position)

# File: class-inheritance-1.rb
#
canvas = Canvas.new(width: 300, height: 300)

# Add a circle to the canvas
#
circle = Circle.new(radius: 1.5, center: Point.new(10, 20))
canvas.add(circle)

# Add a square to the canvas
#
square = Square.new(top_left: Point.new(30, 100), bottom_right: Point.new(50, 80))
canvas.add(square)

# Add a triangle to the canvas
#
triangle = Triangle.new(first: Point.new(20, 30), second: Point.new(50, 10), third: Point.new(10, 5))
canvas.add(triangle)


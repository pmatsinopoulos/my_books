class IntersectionPointCalculator
  attr_reader :line1, :line2

  def initialize(line1, line2)
    @line1 = line1
    @line2 = line2
  end

  def calculate
    raise StandardError, 'No Intersection Point' if line1.a == line2.a

    x = (line2.b - line1.b) / (line1.a - line2.a)

    y = line1.a * x + line1.b

    Point.new(x.round(2), y.round(2))
  end
end

$LOAD_PATH << '.'

require 'point'
require 'straight_line'
require 'intersection_point_calculator'

def ask_line_constant_factors(index)
  print "Give the constant factor 'a' for line number #{index + 1}: "
  a = gets.to_f
  print "Give the constant factor 'b' for line number #{index + 1}: "
  b = gets.to_f
  puts "Nice. Line is 'y = #{a} * x + #{b}'"
  [a, b]
end

def ask_lines
  lines = []
  number_of_lines = 2
  number_of_lines.times do |index|
    lines << ask_line_constant_factors(index)
  end
  lines
end

puts "The equation of a straight line is of the form y = a * x + b. Having said that..."

lines = ask_lines

ab = StraightLine.new(lines[0][0], lines[0][1])
cd = StraightLine.new(lines[1][0], lines[1][1])

intersection_point = IntersectionPointCalculator.new(ab, cd).calculate

puts "Intersection Point: #{intersection_point.inspect}"


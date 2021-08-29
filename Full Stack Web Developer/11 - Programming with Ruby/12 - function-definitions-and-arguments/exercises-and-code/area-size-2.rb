# File: area-size-2.rb
#

# Definition of functions:
# ------------------------
def check_for_invalid_input(shape_integer)
  if shape_integer < 1 || shape_integer > 3
    puts "ERROR! This is not a valid number: #{shape_integer}. Try between 1 and 3"
    exit 1
  end
end

def square
  print 'What is the side size of the square? '
  square_side_size = gets.to_i
  puts "The area size of the square is: #{square_side_size ** 2}"
end

def circle
  print 'What is the radius size of the circle? '
  radius_size = gets.to_i
  puts "The area size of the circle is: #{(Math::PI * radius_size ** 2).round(2)}"
end

def triangle
  print 'What is the one side size of the triangle? '
  side_one_size = gets.to_i
  print 'What is the other side size of the triangle? '
  side_two_size = gets.to_i
  puts "The area size of the triangle is: #{(side_one_size * side_two_size / 2.to_f).round(2)}"
end

# Execution of program starts here:
# ---------------------------------

puts "Calculate the area of a geometric shape!"

print 'Tell me which geometric shape you want area calculated for: (1) for square (2) for circle (3) for triangle (1/2/3): '
geometric_shape = gets.to_i

check_for_invalid_input(geometric_shape)

case geometric_shape
  when 1
    square
  when 2
    circle
  when 3
    triangle
end

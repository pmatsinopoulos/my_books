# File: area-size-1.rb
#
puts "Calculate the area of a geometric shape!"

print 'Tell me which geometric shape you want area calculated for: (1) for square (2) for circle (3) for triangle (1/2/3): '
geometric_shape = gets.to_i
if geometric_shape < 1 || geometric_shape > 3
  puts "ERROR! This is not a valid number: #{geometric_shape}. Try between 1 and 3"
  exit 1
end

case geometric_shape
  when 1
    print 'What is the side size of the square? '
    square_side_size = gets.to_i
    puts "The area size of the square is: #{square_side_size ** 2}"
  when 2
    print 'What is the radius size of the circle? '
    radius_size = gets.to_i
    puts "The area size of the circle is: #{(Math::PI * radius_size ** 2).round(2)}"
  when 3
    print 'What is the one side size of the triangle? '
    one_side_size = gets.to_i
    print 'What is the other side size of the triangle? '
    other_side_size = gets.to_i
    puts "The area size of the triangle is: #{(one_side_size * other_side_size / 2.to_f).round(2)}"
end

print 'Please, give me the integer number (greater than or equal to 0): '
number = gets.to_i
if number < 0
  puts "You didn't give a valid number"
else
  number % 2 == 0 ? puts('This number is even') : puts('This number is odd')
end

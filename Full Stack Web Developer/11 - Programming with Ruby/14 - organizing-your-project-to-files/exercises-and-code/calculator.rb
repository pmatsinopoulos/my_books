# File: calculator.rb
#
require_relative './operation'

while true
  print 'Give me first number: '
  first_number = gets.to_i

  print 'Give me second number: '
  second_number = gets.to_i

  print 'Give me the arithmetic operator (+-*/): '
  arithmetic_operator = gets.chomp

  break if arithmetic_operator.empty?

  result = do_operation(first_number, second_number, arithmetic_operator)
  puts "The result of the operation is: #{result}"
end

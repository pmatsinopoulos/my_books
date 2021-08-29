print 'Please, give the first number: '
first_number = gets.to_i
print 'Please, give the second number: '
second_number = gets.to_i

maximum = first_number > second_number ? first_number : second_number

puts "Maximum number is: #{maximum}"

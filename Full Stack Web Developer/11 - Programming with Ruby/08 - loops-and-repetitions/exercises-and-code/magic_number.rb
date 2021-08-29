# File: magic_number.rb
#
MAGIC_NUMBER = 5
number_given = 0
while number_given != MAGIC_NUMBER
  print 'Can you guess the magic number? '
  number_given = gets.to_i
  if number_given < MAGIC_NUMBER
    puts "You didn't find it. Magic Number is greater than #{number_given}."
  elsif
    puts "You didn't find it. Magic Number is less than #{number_given}"
  end
end

puts "Congratulations! You found it. Magic number is #{MAGIC_NUMBER}"

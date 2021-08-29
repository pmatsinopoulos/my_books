# File: task-ask-number.rb
#
LOW_LIMIT = 1
MAX_LIMIT = 1_000_000
POWER_MAX = 20

number_given = 0
while number_given < LOW_LIMIT || number_given > MAX_LIMIT
  print "Please, give me a number from #{LOW_LIMIT} up to #{MAX_LIMIT} (including): "
  number_given = gets.to_i
end

puts "The first #{POWER_MAX} powers of #{number_given} are: "

1.upto POWER_MAX do |i|
  print "#{number_given ** i} "
end

puts "\n--------------"


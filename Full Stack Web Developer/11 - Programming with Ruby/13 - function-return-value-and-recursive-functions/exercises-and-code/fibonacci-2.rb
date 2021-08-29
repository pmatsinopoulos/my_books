# File: fibonacci-2.rb
#
def fibonacci(n)
  return 1 if (1..2).include?(n)
  fibonacci(n - 1) + fibonacci(n - 2)
end

print 'Give the fibonacci position you want to calculate fibonacci for (between 1 and 40): '
n = gets.to_i

if n < 1 || n > 40
  puts "Please, give an integer between 1 and 40."
  exit(1)
end

puts "The fibonacci(#{n}) is: #{fibonacci(n)}"


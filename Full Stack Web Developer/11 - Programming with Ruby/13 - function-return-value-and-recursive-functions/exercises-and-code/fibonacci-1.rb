# File: fibonacci-1.rb
#
def fibonacci(n)
  return 1 if (1..2).include?(n)
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts "Fibonacci on position 10: #{fibonacci(10)}"

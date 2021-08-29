# File: task-enhanced-fibonacci.rb
#
require 'benchmark'

def fibonacci(n, fibonacci_memory)
  return fibonacci_memory[n] unless fibonacci_memory[n].nil?

  if (1..2).include?(n)
    fibonacci_memory[n] = 1
  else
    fibonacci_memory[n] = (fibonacci_memory[n - 1] = fibonacci(n - 1, fibonacci_memory)) +
                          (fibonacci_memory[n - 2] = fibonacci(n - 2, fibonacci_memory))
  end
end

print 'Give the fibonacci position you want to calculate fibonacci for (between 1 and 40): '
n = gets.to_i

fibonacci_memory = {}
fib = nil
Benchmark.bm do |x|
  x.report { fib = fibonacci(n, fibonacci_memory) }
end

puts "The fibonacci(#{n}) is: #{fib}"


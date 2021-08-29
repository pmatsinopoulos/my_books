# Task B

Your student needs to implement the following program:

Write an enhanced version of the fibonacci function. The current version that is presented in the content of
the chapter has the disadvantage that it calculates the fibonacci number for the same position multiple times. Can you add
some kind of memory to the algorithm? This means that if a fibonacci number has been calculated for a position, you can
save that to another variable and when that fibonacci is requested again, you could return the result from the variable rather
than calculating that again. A possible implementation might be that you save the result of each calculation to a `Hash` variable
with the key being the position (e.g. `fibonacci_memory[n - 1] = fibonacci(n - 1)`). The `fibonacci` function, then, it needs
to first look inside the hash (the `fibonacci_memory`) whether the number has already been calculated and return that. If the
number is not there, it should calculate the fibonacci number and save it to memory, ready to picked up in the next call that
it will be requested.

Note 1: Use benchmark to measure the performance of your version and compare it to the version given in the content of the
chapter.

Note 2: The version in the content of the chapter had an upper limit of 40. Remove any limit.

You can double check your results with the help of an online fibonacci calculator. Google for one.

A possible implementation might be:

``` ruby
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
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

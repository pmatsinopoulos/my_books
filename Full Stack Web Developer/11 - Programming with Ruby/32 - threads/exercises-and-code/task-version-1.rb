# File: task-version-1.rb
#
# This version uses threads and a mutex.
#
require 'benchmark'

print 'Give me the number of elements: '
number_of_elements = gets.to_i
print 'Give me the number of workers: '
number_of_workers = gets.to_i

elements = []
elements_access = Mutex.new

Benchmark.bm(7) do |x|
  x.report do
    threads = []

    number_of_workers.times do
      threads << Thread.new do
        continue = true
        while continue
          elements_access.synchronize do
            if elements.size < number_of_elements
              elements << ('A'..'Z').to_a.sample # simulate a hard work for each thread
            else
              continue = false
            end
          end
        end
      end
    end

    threads.each(&:join)
  end
end

puts "Job done? #{elements.size == number_of_elements && elements.all? {|element| element.length == 1 && ('A'..'Z').include?(element) }}"

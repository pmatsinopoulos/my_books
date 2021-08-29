# File: task-version-2.rb
#
# This version uses threads but does not use mutex.
#
require 'benchmark'
puts "Process id: #{Process.pid}"

class RunConfig
  def initialize(number_of_elements, number_of_workers)
    @number_of_elements = number_of_elements
    @number_of_workers = number_of_workers
    @number_of_elements_in_batch = number_of_elements / number_of_workers
    @remaining_elements_on_last_batch = number_of_elements % number_of_workers

    puts "Number of elements: #{@number_of_elements}"
    puts "Number of workers: #{@number_of_workers}"
    puts "Number of elements for each worker: #{@number_of_elements_in_batch}"
    puts "Number of elements for last worker: #{@number_of_elements_in_batch + @remaining_elements_on_last_batch}"
  end

  def boundaries(worker_index)
    result = [-1, -1]
    result[0] = worker_index * @number_of_elements_in_batch
    if (0..(@number_of_workers - 2)).include?(worker_index)
      result[1] = (worker_index + 1) * @number_of_elements_in_batch - 1
    else
      result[1] = (worker_index + 1) * @number_of_elements_in_batch + @remaining_elements_on_last_batch - 1
    end
    result
  end
end

print 'Give me the number of elements: '
number_of_elements = gets.to_i
print 'Give me the number of workers: '
number_of_workers = gets.to_i

elements = Array.new(number_of_elements)

config = RunConfig.new(number_of_elements, number_of_workers)

Benchmark.bm(7) do |x|
  x.report do
    threads = []
    number_of_workers.times do |worker_index|
      threads << Thread.start(config.boundaries(worker_index)) do |start_index, end_index|
        elements[start_index..end_index].each_with_index do |element, index|
          elements[start_index + index] = ('A'..'Z').to_a.sample # simulate a hard work for each element
        end
      end
    end

    threads.each(&:join)
  end
end

puts "Job done? #{elements.size == number_of_elements && elements.all? {|element| element.length == 1 && ('A'..'Z').include?(element) }}"


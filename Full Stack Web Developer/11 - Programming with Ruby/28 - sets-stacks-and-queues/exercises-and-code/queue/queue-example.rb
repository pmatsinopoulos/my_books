# File: queue-example.rb
#
require_relative 'queue'

q = Acme::Queue.new
q.enqueue('Peter')
q.enqueue('John')
q.enqueue('Maria')
puts q.dequeue # remove 'Peter'
puts q.dequeue # remove 'John'
puts q.peek # prints 'Maria'
puts q.size # prints 1
q.enqueue('George')
puts q.size # prints 2
puts q.dequeue # prints 'Maria'
puts q.dequeue # prints 'George'
puts q.size # prints 0
puts q.empty? # prints true

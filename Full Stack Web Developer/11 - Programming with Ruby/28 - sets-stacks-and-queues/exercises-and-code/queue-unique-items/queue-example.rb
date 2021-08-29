# File: queue-example.rb
#
require_relative 'queue'
require_relative 'student'

q = Acme::Queue.new
q.enqueue(Student.new('Peter', 'Foo'))
q.enqueue(Student.new('John', 'Woo'))
q.enqueue(Student.new('Maria', 'Mc Adam'))
puts q.dequeue # remove 'Peter Foo'
puts q.dequeue # remove 'John woo'
puts q.peek # prints 'Maria Mc Adam'
puts q.size # prints 1
q.enqueue(Student.new('George', 'Stark'))
puts q.size # prints 2
puts q.dequeue # prints 'Maria Mc Adam'
puts q.dequeue # prints 'George Stark'
puts q.size # prints 0
puts q.empty? # prints true
q.enqueue(Student.new('Paul', 'Stock'))
q.enqueue(Student.new('Phil', 'Gales'))
q.enqueue(Student.new('Paul', 'Stock'))
q.enqueue(Student.new('Alex', 'Miney'))
puts q.size # prints 3
puts q.dequeue # prints 'Paul Stock'
puts q.dequeue # prints 'Phil Gales'
puts q.dequeue # prints 'Alex Miney'

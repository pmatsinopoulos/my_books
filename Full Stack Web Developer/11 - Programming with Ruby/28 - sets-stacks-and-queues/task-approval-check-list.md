A. This is a sample implementation of the `Acme::Queue`:

``` ruby
# File: queue.rb
#
require 'forwardable'

module Acme
  class Queue
    extend Forwardable

    def_delegator :@queue, :push, :enqueue
    def_delegator :@queue, :shift, :dequeue
    def_delegators :@queue, :empty?, :size

    def initialize
      @queue = []
    end

    def peek
      @queue[0]
    end
  end
end
```

and the example using this implementation:

``` ruby
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
```

B. Your student needs to implement a queue that does not allow duplicate elements. Here is a sample implementation:

``` ruby
# File: queue.rb
#
require 'forwardable'

require 'set'

module Acme
  class Queue
    extend Forwardable

    def_delegator :@queue, :add, :enqueue
    def_delegators :@queue, :empty?, :size

    def initialize
      @queue = Set.new
    end

    def dequeue
      result = @queue.first
      @queue.delete(@queue.first)
      result
    end

    def peek
      @queue.first
    end
  end
end
```

The `Student` that will be used for the example.

``` ruby
# File: student.rb
#
Student = Struct.new(:first_name, :last_name) do
  def ==(other)
    first_name == other.first_name && last_name == other.last_name
  end

  alias eql? ==

  def hash
    [first_name, last_name].hash
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
```

And the example using this queue and proves that the same student cannot be added twice in the queue.

``` ruby
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
```

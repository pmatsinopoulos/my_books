# File: software-components/utils.rb
#
class Queue
  def add(item)
    puts 'adding item to the queue'
  end

  def remove
    puts 'removing item from the queue'
  end
end

class Stack
  def push(item)
    puts 'Adding item to the stack'
  end

  def pop
    puts 'Pop item from the stack'
  end
end

require_relative 'lib/invoice'

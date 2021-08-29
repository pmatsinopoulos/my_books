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

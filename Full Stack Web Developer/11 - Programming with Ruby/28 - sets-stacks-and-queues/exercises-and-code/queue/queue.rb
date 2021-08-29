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

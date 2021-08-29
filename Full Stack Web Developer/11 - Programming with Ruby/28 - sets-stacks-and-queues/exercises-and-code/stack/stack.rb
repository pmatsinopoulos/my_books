# File: stack.rb
#
require 'forwardable'

class Stack
  extend Forwardable

  def_delegators :@stack, :push, :pop, :empty?

  def initialize
    @stack = []
  end

  def peek
    @stack[-1]
  end
end


# File: linked_list.rb
#
require 'set'
require 'forwardable'

class LinkedList
  extend Forwardable

  def_delegators :@set, :add, :each
  def_delegator :@set, :delete, :remove

  def initialize
    @set = SortedSet.new
  end

  def to_s
    @set.to_a.join("\n")
  end
end

# File: linked_list.rb
#
require_relative 'linked_list_item'

class LinkedList
  include Enumerable

  def initialize
    @first = nil
  end

  # @param item: It can be any object
  #    The method adds the item to the end of the list.
  #
  def add(item)
    item = LinkedListItem.new(item)

    if empty?
      @first = item
    else
      last.next = item
    end
    item.next = nil
  end

  # @param matching_item
  #    The method will remove the first item matching the item given as matching_item
  #
  def remove(matching_item)
    return if empty?

    matching_item = LinkedListItem.new(matching_item)

    found_item = @first
    previous_item = nil

    until found_item.nil?
      if found_item == matching_item
        if found_item == @first
          @first = found_item.next
        else
          previous_item.next = found_item.next
        end
        break
      else
        previous_item = found_item
        found_item = found_item.next
      end
    end

  end

  # This method returns the String representation of the List. Each item
  # is given in its own line
  #
  def to_s
    to_a.join("\n")
  end

  def each
    return enum_for unless block_given?

    item = @first

    while item
      yield item
      item = item.next
    end
  end

  def empty?
    @first.nil?
  end

  def last
    to_a[-1]
  end
end

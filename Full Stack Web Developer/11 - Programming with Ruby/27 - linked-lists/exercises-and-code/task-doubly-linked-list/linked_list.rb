# File: linked_list.rb
#
# This is a doubly linked list. Also, it has @first and @last pointers that point to the
# first and last item in the list.
#
require_relative 'linked_list_item'

class LinkedList

  def initialize
    @first = nil
    @last = nil
  end

  # @param item: It can be any object
  #    The method adds the item to the end of the list.
  #
  def add(item)
    item = LinkedListItem.new(item)

    if empty?
      @first = item
      @last = item
    else
      @last.next = item
      item.previous = @last
      @last = item
    end
  end

  # @param matching_item
  #    The method will remove the first item matching the item given as matching_item
  #
  def remove(matching_item)
    return if empty?

    matching_item = LinkedListItem.new(matching_item)

    found_item = @first

    until found_item.nil?
      if found_item == matching_item
        if found_item == @first
          @first = found_item.next
          @first.previous = nil unless @first.nil?
        else
          previous_item = found_item.previous
          previous_item.next = found_item.next
          found_item.next.previous = previous_item unless found_item.next.nil?
        end
        break
      else
        found_item = found_item.next
      end
    end

  end

  def each
    item = @first
    while item
      yield item
      item = item.next
    end
  end

  def reverse_each
    item = @last
    while item
      yield item
      item = item.previous
    end
  end

  # This method returns the String representation of the List. Each item
  # is given in its own line
  #
  def to_s
    return if empty?
    result = []
    each do |item|
      result << item
    end
    result.join("\n")
  end

  def to_rs
    return if empty?
    result = []
    reverse_each do |item|
      result << item
    end
    result.join("\n")
  end

  def first
    @iteration_index = @first
  end

  def next
    return nil if @iteration_index.nil?
    @iteration_index = @iteration_index.next
  end

  def last
    @reverse_iteration_index = @last
  end

  def previous
    return nil if @reverse_iteration_index.nil?
    @reverse_iteration_index = @reverse_iteration_index.previous
  end

  private

  def empty?
    @first.nil?
  end
end

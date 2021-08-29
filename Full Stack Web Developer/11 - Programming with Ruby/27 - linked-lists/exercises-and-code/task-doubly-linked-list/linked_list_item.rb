# File: linked_list_item.rb
#
class LinkedListItem
  attr_accessor :next, :previous
  attr_reader :item

  def initialize(item)
    @item = item
    @previous = nil
    @next = nil
  end

  def to_s
    @item.to_s
  end

  def ==(other_linked_list_item)
    @item == other_linked_list_item.item
  end
end

# File: linked_list_item.rb
#
class LinkedListItem
  attr_accessor :next
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def to_s
    @item.to_s
  end

  def ==(other_linked_list_item)
    @item == other_linked_list_item.item
  end
end

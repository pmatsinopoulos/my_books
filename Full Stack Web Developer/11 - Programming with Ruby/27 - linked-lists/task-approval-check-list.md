You student needs to implement the doubly linked list as required by the task. Here is a sample implementation:

``` ruby
# File: customer.rb
#
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  def ==(other_customer)
    @name == other_customer.name
  end
end
```

``` ruby
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
```

``` ruby
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
```

``` ruby
# File: main.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts 'List of Customers:'
puts customers

puts 'Reverse list of Customers:'
puts customers.to_rs

# Remove 2nd and then 1st customer:
['George Papas', 'John Smith'].each do |customer_name_to_remove|
  item_to_remove = Customer.new(customer_name_to_remove)

  puts "About to remove #{item_to_remove}"

  customers.remove(item_to_remove)

  puts 'List of Customers:'
  puts customers
end

# Add two more customers
customers.add(Customer.new('Paul Mc Adam'))
customers.add(Customer.new('Marcelo Carlos'))

puts 'Iterate one-by-one starting from first and using next'

customer = customers.first
while customer
  puts customer
  customer = customer.next
end

puts 'Iterate one-by-one starting from last and using previous'

customer = customers.last
while customer
  puts customer
  customer = customer.previous
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.



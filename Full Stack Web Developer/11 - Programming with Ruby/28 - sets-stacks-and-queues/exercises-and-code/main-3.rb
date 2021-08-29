# File: main-3.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan', 'George Papas'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts "List of Customers:"
puts customers

# Remove 2nd and then 1st customer:
['George Papas', 'John Smith'].each do |customer_name_to_remove|
  item_to_remove = Customer.new(customer_name_to_remove)

  puts "About to remove #{item_to_remove}"

  customers.remove(item_to_remove)

  puts "List of Customers:"
  puts customers
end

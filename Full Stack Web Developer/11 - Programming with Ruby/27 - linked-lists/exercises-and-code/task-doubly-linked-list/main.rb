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

# File: main-2.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts "Iterating over all customers one-by-one"

customer = customers.first
while customer
  puts customer
  customer = customers.next
end

# File: main-3.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts "Iterating over all customers one-by-one"

customers.each do |customer|
  puts customer
end

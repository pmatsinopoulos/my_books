# File: main-6.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts "Print the list contents:"

puts customers

puts "Iterating over all customers one-by-one:"

enumerator = customers.each # call #each without giving a block

loop do
  puts enumerator.next
end


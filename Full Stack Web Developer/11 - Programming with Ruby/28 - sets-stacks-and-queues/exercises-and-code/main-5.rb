# File: main-5.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts 'Print the contents of the list BEFORE sorting'

puts customers

customers.sort!

puts 'Print the contents of the list AFTER sorting'

puts customers

# File: customers-hash.rb
#
customers = []
customers << {'first name' => 'John', 'last name' => 'Woo'}
customers << {'first name' => 'Mary', 'last name' => 'Foo'}
customers << {'first name' => 'George', 'last name' => 'Papas'}

customers.each_with_index do |customer, index|
  puts "Customer #{index + 1}: #{customer}"
end

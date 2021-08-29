# File: array-to-json.rb
#
require 'json'

customers = ['John Smith', 'Mary Foo', 'George Papas', 'Paul Adam']
customers_json = customers.to_json
puts "Customers JSON representation: #{customers_json}, class: #{customers_json.class}"

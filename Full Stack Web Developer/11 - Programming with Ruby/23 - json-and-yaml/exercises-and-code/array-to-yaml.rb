# File: array-to-yaml.rb
#
require 'yaml'

customers = ['John Smith', 'Mary Foo', 'George Papas', 'Paul Adam']
customers_yaml = customers.to_yaml
puts "Customers in yaml format on next line:"
puts customers_yaml
puts "Customer in yaml, class is #{customers_yaml.class}"

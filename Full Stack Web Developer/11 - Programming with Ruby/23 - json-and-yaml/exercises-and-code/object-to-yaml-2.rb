# File: object-to-yaml-2.rb
#
require 'yaml'

class Customer
  attr_accessor :name, :address

  def details
    "Name: #{name}, Address: #{address} "
  end
end

customer = Customer.new
customer.name = 'John'
customer.address = 'Independence Day 5th, 11511'

customer_yaml = customer.to_yaml
File.write('customer.yml', customer_yaml)

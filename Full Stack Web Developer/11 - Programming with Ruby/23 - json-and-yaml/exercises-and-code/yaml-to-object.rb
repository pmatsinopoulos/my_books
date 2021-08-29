# File: yaml-to-object.rb
#
require 'yaml'

class Customer
  attr_accessor :name, :address
end

customer = YAML.load_file('customer.yml')
puts customer.inspect

# File: hash-to-json
#
require 'json'

customer = {
  first_name: 'John',
  last_name: 'Smith'
}

customer_json = customer.to_json

puts "Customer_json: #{customer_json}, with class: #{customer_json.class}"

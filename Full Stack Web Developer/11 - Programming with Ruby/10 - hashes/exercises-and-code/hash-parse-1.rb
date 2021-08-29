# File: hash-parse-1.rb
#
product_quantities = {}
product_quantities['Oranges'] = 30
product_quantities['Apples'] =  20

product_quantities.each do |key, value|
  puts "Key: #{key} has the value: #{value}"
end

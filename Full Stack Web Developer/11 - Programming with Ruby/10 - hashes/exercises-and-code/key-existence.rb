# File: key-existence.rb
#
customers = {
  'JW001' => 'John Smith',
  'MW001' => 'Maria Foo',
  'GP001' => 'George Papas'
}

puts "Is customer with id 'FB001' registered? #{customers.has_key?('FB001') ? 'YES' : 'NO'}"
puts "Is customer with id 'GP001' registered? #{customers.has_key?('GP001') ? 'YES' : 'NO'}"

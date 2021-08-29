# File: simple-return.rb
#
def returns_nil
  puts 'Foo'
  return
end

returned_value = returns_nil
puts "Returned value is: >>>#{returned_value}<<<. Is it nil?: #{returned_value.nil?}"


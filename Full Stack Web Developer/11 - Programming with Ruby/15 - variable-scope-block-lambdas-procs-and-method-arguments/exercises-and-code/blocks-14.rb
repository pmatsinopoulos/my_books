# File: blocks-14.rb
#
customers = [{first_name: 'John', last_name: 'Smith'},
             {first_name: 'Mary', last_name: 'Foo'},
             {first_name: 'George', last_name: 'Papas'}]

customers.each do |element|
  puts "Customer is: #{element[:first_name]} #{element[:last_name]}"
end

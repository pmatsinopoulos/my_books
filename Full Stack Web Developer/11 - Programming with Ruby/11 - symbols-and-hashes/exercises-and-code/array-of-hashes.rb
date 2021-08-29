# File: array-of-hashes.rb
#
peter = {first_name: 'Peter', last_name: 'Woo', age: 32, salary: 1000}
maria = {first_name: 'Maria', last_name: 'Foo', age: 42, salary: 1500}
employees = [peter, maria]

puts "Employees: #{employees}"

employees.each_with_index do |employee, index|
  puts "Employee at position #{index + 1}: #{employee}"
end


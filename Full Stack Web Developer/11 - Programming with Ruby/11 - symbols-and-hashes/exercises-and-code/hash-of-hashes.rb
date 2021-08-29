# File: hash-of-hashes.rb
#
employees = {peter: {first_name: 'Peter', last_name: 'Woo', age: 32, salary: 1000},
             maria: {first_name: 'Maria', last_name: 'Foo', age: 42, salary: 1500}}

puts "Employees: #{employees}"

employees.each_with_index do |(employee_key, employee_value), index|
  puts "Employee at position #{index + 1}: #{employee_key}: #{employee_value}"
end


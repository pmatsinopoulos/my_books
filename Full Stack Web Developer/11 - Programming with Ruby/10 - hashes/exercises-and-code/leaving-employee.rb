# File: leaving-employee.rb
#
employees = {
  'JS001' => 'John Smith',
  'MF001' => 'Mary Foo',
  'GP001' => 'George Papas'
}

print "Give me the employee number that left the company. One of #{employees.keys} "
employee_number = gets.chomp.upcase

employees.delete(employee_number)

puts "Thanks! Now the employees are: #{employees}"

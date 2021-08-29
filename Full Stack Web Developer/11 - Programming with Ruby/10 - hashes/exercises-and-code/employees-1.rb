# File employees-1.rb
#
print 'Please, give the number of employees: '
number_of_employees = gets.to_i

employees = {}
number_of_employees.times do
  print 'Please, give the name of the next employee: '
  name = gets.chomp
  print 'Please, give us also the salary: '
  salary = gets.to_i
  employees[name] = salary
end
puts employees.inspect


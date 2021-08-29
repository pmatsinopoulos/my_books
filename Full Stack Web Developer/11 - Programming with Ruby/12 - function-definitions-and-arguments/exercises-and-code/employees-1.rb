# File: employees-1.rb
#
print 'Please, give the number of employees: '
number_of_employees = gets.to_i

puts '--------------------'

employees = []
number_of_employees.times do
  print 'Give first name of employee: '
  first_name = gets.chomp

  print 'Give last name of employee: '
  last_name = gets.chomp

  print 'Give age of employee: '
  age = gets.to_i

  print 'Give salary of employee: '
  salary = gets.to_i

  employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}

  puts '******************************'
end

employees.size.times do |i|
  puts employees[i].inspect
end

puts "=========="

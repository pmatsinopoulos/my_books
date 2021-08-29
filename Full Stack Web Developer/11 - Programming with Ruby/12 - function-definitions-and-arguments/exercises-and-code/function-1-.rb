# File: function-1.rb
#
print 'Please, give the number of employees: '
number_of_employees = gets.to_i

puts '-' * 20

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

  puts '*' * 30
end

column_size = 25

4.times do
  print '+'
  print '=' * (column_size - 1)
end
puts '+'

print '|First Name'.ljust(column_size)
print '|Last Name'.ljust(column_size)
print '|Age'.ljust(column_size)
print '|Salary'.ljust(column_size)
puts  '|'

4.times do
  print '+'
  print '=' * (column_size - 1)
end
puts '+'

employees.each_with_index do |employee, index|
  print "|#{employee[:first_name]}".ljust(column_size)
  print "|#{employee[:last_name]}".ljust(column_size)
  print "|#{employee[:age]}".ljust(column_size)
  print "|#{employee[:salary]}".ljust(column_size)
  puts  '|'
  unless index == employees.size - 1
    4.times do
      print '+'
      print '-' * (column_size - 1)
    end
    puts '+'
  end
end

puts '=' * (column_size * 4 + 1)

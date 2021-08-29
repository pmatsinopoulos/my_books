# File: employees-2.rb
#
employees = { "John Woo" => 1000, "Mary Foo" => 1500, "George Papas" => 800}

max_salary_name = ''
max_salary = 0
employees.each do |employee_name, salary|
  if salary > max_salary
    max_salary_name = employee_name
    max_salary = salary
  end
end

puts "The employee #{max_salary_name} has the maximum salary: #{max_salary}"

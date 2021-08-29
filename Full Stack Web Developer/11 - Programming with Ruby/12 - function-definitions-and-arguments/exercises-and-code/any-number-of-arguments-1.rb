# File: any-number-of-arguments-1.rb
#
def customer_names(*customers)
  column_width = 35
  puts "#{'First Name'.ljust(column_width)}#{'Last Name'.ljust(column_width)}"
  puts '-' * column_width * 2
  customers.each do |customer|
    first_name = customer.split(' ')[0]
    last_name = customer.split(' ')[1..-1].join(' ')
    puts "#{first_name.ljust(column_width)}#{last_name.ljust(column_width)}"
  end
end

customer_names('Peter Woo', 'John Smith', 'Maria Foo', 'Alejandro Rodriguez de la Pena y de Ybarra', 'George')

puts "\nSome Other Customers:"

customer_names('Peter Woo', 'Jorge Pena', 'Angel Carballo')

# File: local-variables-5.rb
#
def change_value(a)
  puts "a inside function before change: #{a}"
  a *= 2
  puts "a inside function after change: #{a}"
end

var = 8
puts "Calling change_value with the var being #{var}"
change_value(var)

puts "var after calling the change_value function: #{var}"

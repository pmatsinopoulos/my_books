# File: methods-1.rb
#
def foo(a)
  puts "#{a} doubled is #{a * 2}"
end

method_var = method(:foo)
puts "method_var is: #{method_var.inspect}"
method_var.call(5)

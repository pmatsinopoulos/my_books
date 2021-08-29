# File: blocks-1.rb
#
def foo(a, &b)
  puts "a: #{a.inspect}"
  puts "b: #{b.inspect}"
end

puts 'About to call foo: '

foo(5)


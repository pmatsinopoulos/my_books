# File: methods-2.rb
#
def double(a)
  puts "I am block #1 and I will double my argument: #{a * 2}"
end

def triple(a)
  puts "I am block #2 and I will triple my argument: #{a * 3}"
end

def foo(b1, b2, number)
  b1.call(number)
  b2.call(number)
end

puts 'I will now call foo'

foo(method(:double), method(:triple), 2)

# File: blocks-18.rb
#
block1 = ->(a) { puts "I am block #1 and I will double my argument: #{a * 2}" }
block2 = ->(a) { puts "I am block #2 and I will triple my argument: #{a * 3}" }

def foo(b1, b2, number)
  b1.call(number)
  b2.call(number)
end

puts 'I will now call foo'

foo(block1, block2, 2)

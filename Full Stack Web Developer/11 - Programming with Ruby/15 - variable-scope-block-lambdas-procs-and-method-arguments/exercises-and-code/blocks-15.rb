# File: blocks-15.rb
#
block1 = Proc.new { puts 'I am block #1' }
block2 = Proc.new { puts 'I am block #2' }

def foo(b1, b2)
  b1.call
  b2.call
end

puts 'I will now call foo'

foo(block1, block2)

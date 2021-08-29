# File: blocks-2.rb
#
def foo(a, &block)
  puts "a: #{a.inspect}"
  puts "block: #{block.inspect}"
end

puts 'About to call foo: '

foo(5) do

end


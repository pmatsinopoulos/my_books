# File: blocks-5.rb
#
def foo(a, &block)
  puts "a: #{a.inspect}"
  puts "block: #{block.inspect}"
  yield
end

puts 'About to call foo: '

foo(5) do
  puts 'I am a piece of Ruby block code!'
end


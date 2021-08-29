# File: blocks-9.rb
#
def multiply(a, &block)
  yield a
end

multiply(5) do |a|
  puts "#{a * 2}"
end

multiply(10) do |a|
  puts "#{a * 3}"
end

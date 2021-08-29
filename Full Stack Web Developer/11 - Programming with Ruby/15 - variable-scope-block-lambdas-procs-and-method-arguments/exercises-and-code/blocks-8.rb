# File: blocks-8.rb
#
def multiply(a, &block)
  yield a
end

multiply(5) { |a| puts "#{a * 2}" }
multiply(10) { |a| puts "#{a * 3}" }

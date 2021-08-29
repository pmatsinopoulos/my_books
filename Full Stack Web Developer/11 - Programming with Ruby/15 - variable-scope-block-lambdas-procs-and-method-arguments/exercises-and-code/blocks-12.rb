# File: blocks-12.rb
#
def multiply(a, &block)
  if block
    yield a
  else
    puts 'block not given'
  end
end

multiply(5) { |a| puts "#{a * 2}"}
multiply(10)

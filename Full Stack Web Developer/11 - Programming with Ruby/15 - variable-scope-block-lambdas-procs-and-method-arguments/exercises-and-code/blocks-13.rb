# File: blocks-13.rb
#
def multiply(a)
  if block_given?
    yield a
  else
    puts 'block not given'
  end
end

multiply(5) { |a| puts "#{a * 2}"}
multiply(10)

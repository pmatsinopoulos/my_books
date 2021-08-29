# File: local-variables-3.rb
#
var = 2

def foo
  puts var
end

puts 'Calling var outside foo...'
puts var

puts 'Calling foo...'
foo


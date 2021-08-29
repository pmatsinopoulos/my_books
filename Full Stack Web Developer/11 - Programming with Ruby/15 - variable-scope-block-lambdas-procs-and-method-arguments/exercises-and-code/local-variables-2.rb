# File: local-variables-2.rb
#
def foo
  puts var
  var = 5
end

puts 'Calling foo...'
foo

puts 'Calling var outside foo...'
puts var

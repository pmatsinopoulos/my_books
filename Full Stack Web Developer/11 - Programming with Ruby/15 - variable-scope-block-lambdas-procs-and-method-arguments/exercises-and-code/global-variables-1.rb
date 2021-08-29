# File: global-variables-1.rb
#
$var = 5

def foo
  $var += 6
end

puts "$var value before calling foo: #{$var}"

foo

puts "$var value after calling foo: #{$var}"


# File: truthy_examples.rb
#
if 1
  puts '1 is truthy'
else
  puts '1 is falsy'
end

if 0
  puts '0 is truthy'
else
  puts '0 is falsy'
end

if '0'
  puts "'0' is truthy"
else
  puts "'0' is falsy"
end

if 'hello world'
  puts "'hello world' is truthy"
else
  puts "'hello world' is falsy"
end

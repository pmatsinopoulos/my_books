# File: nil is considered falsy
#
if nil
  puts 'nil is truthy'
else
  puts 'nil is falsy'
end

if nil == false
  puts 'nil is equal to false'
elsif nil == true
  puts 'nil is equal to true'
else
  puts 'nil is not equal to either false or true'
end

# File: ask-name.rb
#
name = 'foo'
while name != 'lucky' && !name.empty?
  print 'Give me a name. Give Lucky or nothing if you want to stop: '
  name = gets.chomp.downcase
end

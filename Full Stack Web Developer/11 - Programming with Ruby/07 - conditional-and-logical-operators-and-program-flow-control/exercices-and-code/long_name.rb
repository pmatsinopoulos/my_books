# File: long_name.rb
#
print 'Give me your name: '
name = gets.chomp
if name.length > 8
  puts 'You have a long name'
end
puts "Goodbye #{name}!"

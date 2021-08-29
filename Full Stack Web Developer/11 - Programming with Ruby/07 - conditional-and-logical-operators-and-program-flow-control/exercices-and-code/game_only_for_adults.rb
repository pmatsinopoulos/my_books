# File: game_only_for_adults.rb
#
print 'Give me your age: '
age = gets.to_i
if age < 18
  puts 'Sorry, but you need to be an adult (>= 18)'
  puts 'Good bye!'
else
  print 'Nice! Now please give me your name: '
  name = gets.chomp
  puts "Welcome to this poker game #{name}"
  puts 'Hope you will enjoy that!'
end

# File: ask-name.rb
#
print "What's your name? "
name = gets.chomp
if name.empty?
  $stderr.puts "You didn't tell me your name. Bye!"
  exit 1
end
puts "Hello #{name}"


# File: dancing.rb
#
print 'Do you like dancing? (y/n) '
like_dancing = gets.chomp
puts "Let's Dance!" if like_dancing.downcase.start_with?('y')

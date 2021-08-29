# File: exit-1.rb
#
thread = Thread.new { exit }
thread.join
puts 'This line will never be printed'

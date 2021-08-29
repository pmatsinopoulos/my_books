# File: name-3.rb
#
puts "Program Name: #{$PROGRAM_NAME}"
puts '------------'

20.times do |i|
  $PROGRAM_NAME = "name process with index #{i}"
  puts "Program name is: #{$PROGRAM_NAME}"
  sleep 1
end

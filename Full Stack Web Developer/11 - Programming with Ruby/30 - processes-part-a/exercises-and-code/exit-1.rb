# File: exit-1.rb
#
at_exit do
  puts "Process with id: #{Process.pid} is about to exit"
end

20.times do |i|
  puts "Iteration #{i}"
  sleep 1
  exit if i == 5
end


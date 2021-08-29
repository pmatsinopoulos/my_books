# File: exception-in-thread-1.rb
#
Thread.new do
  raise 'Error inside the thread'
end

puts 'Main thread sleeping for 10 seconds.'
sleep 10
puts 'Main thread finished.'




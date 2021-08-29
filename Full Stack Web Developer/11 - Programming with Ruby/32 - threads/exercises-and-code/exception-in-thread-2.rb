# File: exception-in-thread-2.rb
#
thread = Thread.new do
  raise 'Error inside the thread'
end

puts 'Main thread sleeping for 3 seconds.'
sleep 3
puts 'Main thread slept for 3 seconds. Now going to join the thread...'
thread.join

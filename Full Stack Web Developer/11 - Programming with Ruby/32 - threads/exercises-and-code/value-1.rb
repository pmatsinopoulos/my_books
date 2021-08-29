# File: value-1.rb
#
thread = Thread.new do
  sleep 2
  5
end

puts 'Main thread waiting for the thread to finish and get its value...'
thread_result = thread.value
puts "Main thread finished. Its value is: #{thread_result}"

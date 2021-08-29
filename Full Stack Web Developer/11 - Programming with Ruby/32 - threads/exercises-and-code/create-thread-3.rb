# File: create-thread-3.rb
#
Thread.new do
  puts "From within new thread, current thread is: #{Thread.current.object_id}"
  puts "From within new thread, main thread is: #{Thread.main.object_id}"
  puts "From within new thread, process id is: #{Process.pid}"
end

puts "From within main thread, current thread is: #{Thread.current.object_id}"
puts "From within main thread, main thread is: #{Thread.main.object_id}"
puts "From within main thread, process id is: #{Process.pid}"

sleep 10

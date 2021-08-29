# File: create-thread-1.rb
#
Thread.new do
  puts "From within new thread, current thread is: #{Thread.current.object_id}"
  puts "From within new thread, main thread is: #{Thread.main.object_id}"
end

puts "From within main thread, current thread is: #{Thread.current.object_id}"
puts "From within main thread, main thread is: #{Thread.main.object_id}"

sleep 10

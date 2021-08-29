# File: native-threads-1.rb
#
Thread.new { sleep }
puts "Process.id: #{Process.pid}"
sleep


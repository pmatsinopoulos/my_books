# File: fork-3.rb
#
fork do
  puts "I am child with process id: #{Process.pid} and parent process id: #{Process.ppid}"
end
puts "I am parent with process id #{Process.pid}"

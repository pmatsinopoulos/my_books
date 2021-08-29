# File: fork-2.rb
#
if fork
  puts "I am the parent with process id: #{Process.pid}"
else
  puts "I am the child with process id: #{Process.pid} and parent process id: #{Process.ppid}"
end

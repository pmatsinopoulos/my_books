# File: fork-4.rb
#
fork do
  20.times do
    puts "I am the child process with id #{Process.pid} and parent process id #{Process.ppid}"
    sleep 1
  end
end

sleep 3

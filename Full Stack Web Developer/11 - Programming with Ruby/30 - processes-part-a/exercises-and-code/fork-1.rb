# File: fork-1.rb
#
puts 'I am going to fork a new child process...'
child_process_id = fork
puts "Child process id: #{child_process_id}. I am process with id: #{Process.pid} and parent process id: #{Process.ppid}"
puts "Child process forked! I am process with id: #{Process.pid} and parent process id: #{Process.ppid}"

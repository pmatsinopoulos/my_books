# File: fork-5.rb
#
child_process_id = fork do
  5.times do
    puts "I am the child process with id #{Process.pid} and parent process id #{Process.ppid}"
    sleep 1
  end
end

puts "Waiting for #{child_process_id} to finish"
Process.wait
puts 'Child process finished. I will finish too!'

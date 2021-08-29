# File: no-wait-5.rb
#
number_of_child_processes = 3
number_of_terminated_child_processes = 0

# spawn the three child processes
number_of_child_processes.times do |i|
  fork do
    puts "I am child process with id #{Process.pid}, with #{9 + i + 1} seconds work to do"
    sleep 9 + i + 1
  end
end

# parent process works for 50 seconds and in between it checks whether children have finished
5.times do |i|
  begin
    while pid = Process.wait(-1, Process::WNOHANG)
      puts "I am parent and my child with #{pid} finished!"
      number_of_terminated_child_processes += 1
    end
  rescue Errno::ECHILD
  end
  puts "Number of processes finished so far: #{number_of_terminated_child_processes}"
  puts "I am parent and I will do my #{i + 1} batch of work for 10 seconds"
  sleep 10
end

puts 'Parent finished its job...now go to wait for any child process pending'

# after having finished my job as parent, let me wait until any pending child finishes,
# although I do not expect any to finish after me.
while number_of_terminated_child_processes < number_of_child_processes
  Process.wait
  puts "I am parent and my child with #{pid} finished!"
  number_of_terminated_child_processes += 1
end

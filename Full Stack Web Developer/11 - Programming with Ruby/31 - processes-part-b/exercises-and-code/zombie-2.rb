# File: zombie-2.rb
#
pid = fork do
  puts "child will now exit"
end

puts pid
puts 'Parent will now detach the child process'
Process.detach(pid)

puts 'Parent will sleep for 15 seconds to give you enough time to inspect that no zombie process exists. Try ps -l on another terminal.'
sleep 15

puts 'Parent terminates'

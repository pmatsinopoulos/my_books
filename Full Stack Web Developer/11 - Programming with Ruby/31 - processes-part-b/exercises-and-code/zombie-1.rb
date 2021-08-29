# File: zombie-1.rb
#
pid = fork do
  puts "child will now exit"
end

puts pid
puts 'Parent will sleep for 30 seconds to give you enough time to inspect the zombie process. Try ps -l on another terminal.'
sleep 30
Process.wait
puts 'Parent will sleep for 30 seconds to give you enough time to inspect that no zombie process exists any more. Try ps -l on another terminal.'
sleep 30
puts 'Parent terminates'

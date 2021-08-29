# File: fork-10.rb
#
puts "Parent process with with id: #{Process.pid} will spawn a child that will quickly exit."

fork do
  puts "Child process #{Process.pid} with parent #{Process.ppid} will now exit."
  exit
end

puts 'Parent process will sleep for 5 seconds'
5.times do |i|
  puts "parent sleeping (#{i + 1})... "
  sleep 1
end

puts 'Now waiting for the child process to finish'
child_process = Process.wait

puts "Child process with id: #{child_process} has finished!"

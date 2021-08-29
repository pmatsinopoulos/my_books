# File: orphaned-child.rb
#
fork do
  sleep 3
  puts "My parent is #{Process.ppid}"
  sleep 3
  exit
end

puts "Parent process parent is #{Process.ppid}"

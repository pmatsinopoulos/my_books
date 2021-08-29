# File: signal-child-2.rb
#
trap('SIGCHLD') do
  puts '**************** trapped terminated child code *********************'
end

puts 'Parent will spawn 3 children sleeping 2, 3 and 4 seconds respectively'

3.times do |i|
  fork { sleep 1 + i + 1 }
end

puts 'Parent will sleep for 8 seconds'
sleep 8

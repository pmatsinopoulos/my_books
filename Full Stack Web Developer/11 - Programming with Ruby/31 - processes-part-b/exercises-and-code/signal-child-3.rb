# File: signal-child-3.rb
#
trap('SIGCHLD') do
  puts '**************** trapped terminated child code *********************'
end

puts 'Parent will spawn 3 children sleeping 3 seconds each'

3.times do |i|
  fork { sleep 3 }
end

puts 'Parent will sleep for 5 seconds'
sleep 5

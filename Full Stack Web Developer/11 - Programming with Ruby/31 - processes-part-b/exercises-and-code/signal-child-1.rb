# File: signal-child-1.rb
#
trap('SIGCHLD') do
  puts '**************** trapped terminated child code *********************'
end

puts 'Parent will spawn a child sleeping 2 seconds'

fork { sleep 2 }

puts 'Parent will sleep for 5 seconds'
sleep 5

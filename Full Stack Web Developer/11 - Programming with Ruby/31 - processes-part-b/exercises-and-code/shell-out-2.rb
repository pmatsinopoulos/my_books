# File: shell-out-2.rb
#
puts "Calling 'system'...#{Time.now}"
system('sleep 10')
puts "after 'system' call...#{Time.now}"

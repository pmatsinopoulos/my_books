# File: shell-out-5.rb
#
puts "Calling 'Process.spawn'...#{Time.now}"
Process.spawn('sleep 3 && date')
puts "after 'Process.spawn' call...#{Time.now}"

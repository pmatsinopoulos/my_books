# File: wait-thread-1.rb
#
sleeping_thread = Thread.new { 10.times { print '.'; sleep 1} }

puts 'Main thread will now wait for sleeping thread to finish'
sleeping_thread.join
puts
puts 'Sleeping thread has finished, going to terminate now.'

# File: worker-1.rb
#
trap('SIGUSR1') do
  puts 'Hey there!'
end

puts "I am process with id: #{Process.pid} and I am going to work forever..."

sleep

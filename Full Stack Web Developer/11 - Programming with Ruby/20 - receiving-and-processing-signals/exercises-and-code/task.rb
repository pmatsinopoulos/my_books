# File: task.rb
#
class UserAskedForTermination < StandardError; end

['SIGINT', 'SIGTERM'].each do |signal|
  Signal.trap(signal) do |signo|
    raise UserAskedForTermination, signo
  end
end

i = 100
while i > 1
  begin
    puts "Counting down: #{i}"
    i -= 1
    sleep 1
  rescue UserAskedForTermination => ex
    print "Signal #{ex.message} received! Are you sure that you want me to stop? "
    answer = gets.chomp
    break if answer.downcase == 'yes'
  end
end

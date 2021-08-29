# File: signal-child-4.rb
#
trap('SIGCHLD') do
  begin
    while pid = Process.wait(-1, Process::WNOHANG)
      puts '**************** trapped terminated child code *********************'
    end
  rescue Errno::ECHILD
  end
end

puts 'Parent will spawn 3 children sleeping 3 seconds each'

3.times do |i|
  fork { sleep 3 }
end

puts 'Parent will sleep for 5 seconds'
sleep 5

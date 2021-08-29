# Files: signals-2.rb
#
SECONDS_TO_SLEEP = 3
begin
  i = 1
  while true
    puts "#{i}...sleeping for #{SECONDS_TO_SLEEP} seconds (press Ctrl+C to terminate me)"
    sleep SECONDS_TO_SLEEP
    i += 1
  end

rescue Interrupt => ex
  puts "User has clicked on Ctrl + C. Signal Details: #{ex.inspect}"
end

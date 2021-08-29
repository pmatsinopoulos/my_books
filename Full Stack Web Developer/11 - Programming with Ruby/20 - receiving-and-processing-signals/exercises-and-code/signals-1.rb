# Files: signals-1.rb
#
SECONDS_TO_SLEEP = 3

i = 1
while true
  puts "#{i}...sleeping for #{SECONDS_TO_SLEEP} seconds (press Ctrl+C to terminate me)"
  sleep SECONDS_TO_SLEEP
  i += 1
end

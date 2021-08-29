# File: Rakefile-dependencies-2.rb
#
task :hello do
  puts "Hello ... sleeping for 5 seconds ..."
  sleep 5
  puts "...Hello ends"
  $stdout.flush
end

task :world do
  puts "World ... sleeping for 2 seconds ..."
  sleep 2
  puts "... World ends"
  $stdout.flush
end

task default: [:hello, :world] do
  puts "... default"
end

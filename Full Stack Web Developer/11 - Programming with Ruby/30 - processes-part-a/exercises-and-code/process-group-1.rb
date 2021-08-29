# File: process-group-1.rb
#
fork do
  $stdout.puts "Child process belongs to process group with id: #{Process.gid}"
  $stdout.flush
end
$stdout.puts "Parent process (#{Process.pid}) belongs to the process group with id: #{Process.gid}"
$stdout.flush

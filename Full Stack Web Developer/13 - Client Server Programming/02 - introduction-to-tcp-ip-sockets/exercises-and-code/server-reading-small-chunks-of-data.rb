# File: server-reading-small-chunks-of-data.rb
#
require 'socket'

Socket.tcp_server_loop(8080) do |connection|
  while data = connection.read(10)
    $stdout.print data
    $stdout.flush
  end

  $stdout.puts 'closing connection...'
  connection.close
  $stdout.puts '...connection closed'
end

$stdout.puts 'Server terminates'

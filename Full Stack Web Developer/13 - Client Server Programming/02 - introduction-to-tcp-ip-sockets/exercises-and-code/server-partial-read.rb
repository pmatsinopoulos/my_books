# File: server-partial-read.rb
#
require 'socket'

Socket.tcp_server_loop(8080) do |connection|
  begin
    while data = connection.readpartial(10)
      $stdout.print data
      $stdout.flush
    end

  rescue EOFError
  end

  $stdout.puts 'closing connection...'
  connection.close
  $stdout.puts '...connection closed'
end

$stdout.puts 'Server terminates'

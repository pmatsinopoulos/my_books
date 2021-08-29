# File: client-writing-to-connection.rb
#
require 'socket'

Socket.tcp('127.0.0.1', 8080) do |connection|
  connection.write ARGV[0]
  connection.close_write # This will send the EOF

  last_name = connection.read
  puts last_name

  connection.close
end


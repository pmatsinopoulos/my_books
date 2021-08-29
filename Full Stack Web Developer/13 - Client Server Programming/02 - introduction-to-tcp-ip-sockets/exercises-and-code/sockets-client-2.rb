# File: sockets-client-2.rb
#
require 'socket'

Socket.tcp('127.0.0.1', 8080) do |connection|
  connection.close
end

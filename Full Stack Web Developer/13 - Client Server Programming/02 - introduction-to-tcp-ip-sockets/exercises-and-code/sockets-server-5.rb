# File: sockets-server-5.rb
#
require 'socket'

Socket.tcp_server_loop(8080) do |connection|
  puts "Server local address: #{connection.local_address.inspect}"
  puts "Client remote address: #{connection.remote_address.inspect}"
  connection.close
end


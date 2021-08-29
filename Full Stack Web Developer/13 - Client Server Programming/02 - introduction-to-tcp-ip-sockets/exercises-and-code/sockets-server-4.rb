# File: sockets-server-4.rb
#
require 'socket'

sockets = Socket.tcp_server_sockets(8080)
puts "sockets: #{sockets.inspect}"

Socket.accept_loop(sockets) do |connection|
  puts "Server local address: #{connection.local_address.inspect}"
  puts "Client remote address: #{connection.remote_address.inspect}"
  connection.close
end


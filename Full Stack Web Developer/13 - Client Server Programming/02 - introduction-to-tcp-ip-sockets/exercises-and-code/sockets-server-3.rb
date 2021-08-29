# File: sockets-server-3.rb
#
require 'socket'

server = TCPServer.new(8080)

loop do
  connection = server.accept
  puts "Server local address: #{connection.local_address.inspect}"
  puts "Client remote address: #{connection.remote_address.inspect}"
  connection.close
end


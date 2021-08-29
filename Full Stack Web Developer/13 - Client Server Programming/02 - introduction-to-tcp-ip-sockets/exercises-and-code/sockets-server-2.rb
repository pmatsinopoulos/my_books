# File: sockets-server-2.rb
#
require 'socket'

socket = Socket.new(:INET, :STREAM)

address = Socket.pack_sockaddr_in(8080, '0.0.0.0')
socket.bind(address)

socket.listen(5)

loop do
  connection, _ = socket.accept
  puts "Server local address: #{connection.local_address.inspect}"
  puts "Client remote address: #{connection.remote_address.inspect}"
  connection.close
end


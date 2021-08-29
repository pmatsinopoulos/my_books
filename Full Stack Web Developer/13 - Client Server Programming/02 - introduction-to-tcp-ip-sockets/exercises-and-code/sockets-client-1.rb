# File: sockets-client-1.rb
#
require 'socket'

socket = Socket.new(:INET, :STREAM)
remote_addr = Socket.pack_sockaddr_in(8080, '127.0.0.1')
socket.connect(remote_addr)
socket.close


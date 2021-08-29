# File: sockets-server-1.rb
#
require 'socket'

# 1. create the socket
socket = Socket.new(:INET, :STREAM)

# 2. Bind:
#
# 2.1. Create a structure to hold the address for listening
address = Socket.pack_sockaddr_in(8080, '0.0.0.0')
# 2.2. Bind to this address
socket.bind(address)

# 3. Listen for incoming connections:
socket.listen(5) # 5 is the size of the pending connections queue

# 4. Accept an incoming connection:
connection, remote_address = socket.accept

puts "Connection: #{connection.inspect}"
puts "Remote address: #{remote_address.inspect}"

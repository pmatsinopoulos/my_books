# File: sockets-server-2.rb
#
require 'socket'

socket = Socket.new(:INET, :STREAM)

address = Socket.pack_sockaddr_in(8080, '0.0.0.0')
socket.bind(address)

socket.listen(5)

children = []

while true
  connection, _ = socket.accept
  if child_process_id = fork
    children << child_process_id
    # parent code
    # will return back to accept new connection
    puts "Client connected: #{connection.remote_address.inspect}"
  else
    # child code
    # will serve the client and exit
  end
end

children.size.times { Process.wait }

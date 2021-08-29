# File: server-reading-from-connection.rb
#
require 'socket'

Socket.tcp_server_loop(8080) do |connection|
  puts 'starting to read ...'
  puts connection.read
  puts '...end reading'

  puts 'closing connection...'
  connection.close
  puts '...connection closed'
end

puts 'Server terminates'

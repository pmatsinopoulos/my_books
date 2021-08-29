# File: client-requesting-last-names.rb
#
require 'socket'

Socket.tcp('127.0.0.1', 8080) do |connection|
  connection.write ARGV[0]
  connection.close
end


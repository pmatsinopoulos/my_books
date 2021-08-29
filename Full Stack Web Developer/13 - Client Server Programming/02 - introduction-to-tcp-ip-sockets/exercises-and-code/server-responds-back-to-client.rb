# File: server-responds-back-to-client.rb
#
require 'socket'

last_names = {
  'John' => 'Smith',
  'Mary' => 'Foo',
  'Paul' => 'Fox'
}
Socket.tcp_server_loop(8080) do |connection|
  first_name = connection.read
  puts "First name: #{first_name}"
  answer = last_names.fetch(first_name, 'unknown')
  connection.write answer
  connection.close
end

puts 'Server terminates'

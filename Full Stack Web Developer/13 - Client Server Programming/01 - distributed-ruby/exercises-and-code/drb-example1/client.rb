# File: drb-example1/client.rb
#
require 'drb/drb'

SERVER_URI = "druby://localhost:8787"

puts 'I am a client and I want to know the current time...'
puts "...I am going to ask #{SERVER_URI}"

timeserver = DRbObject.new_with_uri(SERVER_URI)

timeserver_result = timeserver.get_current_time

puts "Sleeping for 10 seconds to give enough time for the server to be killed..."
sleep 10

puts "...got back this: #{timeserver_result}"

puts "...timeserver is #{timeserver.inspect}"
puts "...timeserver_result class is #{timeserver_result.class}"
puts "...timeserver_result inspect is #{timeserver_result.inspect}"


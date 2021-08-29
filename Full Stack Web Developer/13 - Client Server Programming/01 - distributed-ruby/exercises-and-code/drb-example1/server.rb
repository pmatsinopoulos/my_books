# File: drb-example1/server.rb
#
require 'drb/drb'

URI = "druby://localhost:8787"

class MyTime
  include DRb::DRbUndumped

  def initialize(a_time_instance)
    @a_time_instance = a_time_instance
  end

  def to_s
    @a_time_instance.strftime("%Y%m%d%H%M%S")
  end
end

class TimeServer
  def get_current_time
    MyTime.new(Time.now)
  end
end

SERVER_OBJECT = TimeServer.new

puts 'Starting server ....that can tell the time...(Hit Ctrl+C to terminate me)'
puts "(I am here: #{URI})..."

DRb.start_service(URI, SERVER_OBJECT)

# Wait for the drb server thread to finish before exiting.
DRb.thread.join

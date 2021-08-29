# File: drb-example2/server.rb
#
require 'drb/drb'

$SAFE = 1

class MyRemoteClass
  def foo
    "foo #{object_id}"
  end

  def inspect
    "my remote classsssss #{object_id}"
  end
end

my_remote_class = MyRemoteClass.new

DRb.start_service('druby://localhost:8787', my_remote_class)

DRb.thread.join


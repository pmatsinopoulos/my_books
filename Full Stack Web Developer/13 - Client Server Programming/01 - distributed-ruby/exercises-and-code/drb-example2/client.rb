# File: drb-example2/client.rb
#
require 'drb/drb'

ro = DRbObject.new_with_uri('druby://localhost:8787')

puts ro.foo

class << ro
  undef_method :instance_eval
end

ruby_code =<<RUBY_CODE
`rm server.rb`
RUBY_CODE

ro.instance_eval ruby_code


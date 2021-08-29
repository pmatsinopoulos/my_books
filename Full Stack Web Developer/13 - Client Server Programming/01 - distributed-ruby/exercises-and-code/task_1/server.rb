# File: server.rb
#
require 'drb/drb'
require_relative 'utility_factory'

$SAFE = 1

DRb.start_service('druby://localhost:8787', UtilityFactory.new)

DRb.thread.join

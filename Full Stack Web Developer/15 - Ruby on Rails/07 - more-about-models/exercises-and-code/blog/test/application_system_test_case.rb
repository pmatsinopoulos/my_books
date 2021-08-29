# File: test/application_system_test_case.rb
#
require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :webkit
end

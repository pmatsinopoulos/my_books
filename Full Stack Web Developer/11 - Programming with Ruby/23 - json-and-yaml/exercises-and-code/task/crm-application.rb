# File: crm-application.rb
#
require 'json'
require 'yaml'
require 'io/console'

$LOAD_PATH << '.'
require 'customer'
require 'order_item'
require 'order'
require 'application'

# Program starts as: ruby crm-application.rb
#
# and User has to give 1st username and 2nd password.
# If user gives the correct username and password (according to the configuration credentials
# stored in order-management.yml) then he is presented with the actions:
# [u] to choose which database to update, i.e. customers or orders.
#    - he is presented with [c] for customers or [o] for orders or [b] to go back.
# If [c] or [o] selected, then the options are:
#   - [c] for create
#   - [r] for retrieve
#   - [u] for update
#   - [d] for delete
#   - [l] for listing all the entries of the database
#   - [b] to choose another database to work with
# If [c] is selected, then according to the database he is presented with questions to answer in order to create a
# new entry.
# If [r] is selected, then user needs to give a keyword to search with.
# if [u] is selected, then user needs to enter the details (if blank on a field, field is not updated)
# if [d] is selected, then user needs to give the id of the entry to delete.

Signal.trap('SIGINT') do
  $stdout.puts 'Bye!'
  exit 0
end

application = Application.new

application.authenticate
application.run


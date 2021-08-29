# File: csv-customers-2.rb
#
require 'csv'

customers = []

CSV.open('customers-2.csv', headers: true) do |csv|
  while true
    record = csv.readline
    break if record.nil?
    customers << record.to_h
  end
end

puts "Customers:\n#{customers.join("\n")}"


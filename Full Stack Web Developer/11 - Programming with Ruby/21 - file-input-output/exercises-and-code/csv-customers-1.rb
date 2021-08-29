# File: csv-customers-1.rb
#
require 'csv'

customers = []

CSV.open('customers-1.csv', headers: true) do |csv|
  while true
    record = csv.readline
    break if record.nil?
    customers << record.to_h
  end
end

puts "Customers:\n#{customers.join("\n")}"


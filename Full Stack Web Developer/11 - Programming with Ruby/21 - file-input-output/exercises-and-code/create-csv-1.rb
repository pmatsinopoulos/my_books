# File: create-csv-1.rb
#
require 'csv'

CSV.open('customers-3.csv', 'w') do |csv|
  csv << ['First Name', 'Last Name']

  while true
    print 'Give me first name and last name of the customer. Terminate by giving an empty input: '
    answer = gets.chomp
    first_name, last_name = answer.split(' ').map(&:strip)

    break if first_name.nil? || last_name.nil? || first_name.empty? || last_name.empty?

    csv << [first_name, last_name]
    csv.flush
  end
end

# File: png-signature-3.rb
#
# See PNG File Format Reference Here: https://www.w3.org/TR/PNG-Structure.html
#
file = File.open(ARGV[0], mode: 'rb')
read_data = file.read(8)
bytes = read_data.bytes
puts "1st byte should be 137: #{bytes[0]}"
puts "2nd byte should be 80: #{bytes[1]}"
puts "3rd byte should be 78: #{bytes[2]}"
puts "4th byte should be 71: #{bytes[3]}"
puts "5th byte should be 13: #{bytes[4]}"
puts "6th byte should be 10: #{bytes[5]}"
puts "7th byte should be 26: #{bytes[6]}"
puts "8th byte should be 10: #{bytes[7]}"
file.close


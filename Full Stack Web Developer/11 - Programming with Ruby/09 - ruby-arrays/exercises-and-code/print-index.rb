# File: print-index.rb
#
['John', 'Maria', 'James', 'Jim'].each_with_index do |name, index|
  puts "#{name} is on position #{index + 1}"
end

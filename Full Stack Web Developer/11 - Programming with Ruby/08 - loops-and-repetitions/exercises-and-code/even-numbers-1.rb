# File: even-numbers-1.rb
#
1.upto 50 do |i|
  next if i % 2 == 1
  puts "#{i} is even number"
end

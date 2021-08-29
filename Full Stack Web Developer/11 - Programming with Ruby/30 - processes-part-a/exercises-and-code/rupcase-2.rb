# File: rupcase-2.rb
#
input = ARGF.read

input.each_line do |line|
  $stdout.puts line.upcase
end


# File: rupcase-1.rb
#
File.open(ARGV[0]) do |file|
  file.each_line do |line|
    $stdout.puts line.upcase
  end
end

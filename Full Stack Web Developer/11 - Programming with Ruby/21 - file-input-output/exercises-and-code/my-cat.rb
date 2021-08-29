# File: my-cat.rb
#
File.open('mario.txt', 'r') do |file|
  while true
    line_read = file.gets
    break if line_read.nil?
    puts line_read
  end
end

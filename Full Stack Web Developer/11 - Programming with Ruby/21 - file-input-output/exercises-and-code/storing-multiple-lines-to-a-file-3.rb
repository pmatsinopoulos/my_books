# File: storing-multiple-lines-to-a-file-3.rb
#
print 'Give me the filename you want to create multiple lines for: '
filename = gets.chomp
if filename.length.zero?
  puts 'You have to give the filename!'
  exit 1
end

while true
  print 'Give me the line to store in the file (terminate file creation by giving an empty input): '
  string_to_store = gets.chomp
  break if string_to_store.length.zero?

  string_to_store = "#{string_to_store}\n"
  File.write(filename, string_to_store, mode: "a")
end

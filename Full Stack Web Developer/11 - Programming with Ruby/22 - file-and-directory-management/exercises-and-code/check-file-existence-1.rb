# File: check-file-existence-1.rb
#
filename = 'foo.txt'
puts "(Before creating file) Does #{filename} exist? #{File.exist?(filename)}"
File.write(filename, 'Creating file foo.txt')
puts "(After creating file) Does #{filename} exist? #{File.exist?(filename)}"

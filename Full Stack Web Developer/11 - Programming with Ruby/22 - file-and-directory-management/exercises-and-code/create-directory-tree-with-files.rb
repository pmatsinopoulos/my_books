# File: create-directory-tree-with-files.rb
#
require 'fileutils'

FileUtils.mkdir_p 'books/programming/Ruby'
FileUtils.mkdir_p 'books/programming/Java'
FileUtils.mkdir_p 'books/programming/Pascal'
FileUtils.mkdir_p 'books/marketing/Google'
FileUtils.mkdir_p 'books/marketing/Yandex'

# Files
filename = 'books/programming/Ruby/introduction.txt'
File.write(filename, 'Introduction To Ruby')


filename = 'books/programming/Ruby/working-with-files.txt'
File.write(filename, 'Working with Files - File Class')


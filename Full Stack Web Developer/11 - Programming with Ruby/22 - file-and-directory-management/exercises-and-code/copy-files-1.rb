# File: copy-files-1.rb
#
require 'fileutils'

FileUtils.cp('books/programming/Ruby/introduction.txt', 'books/programming/Java')
FileUtils.cp('books/programming/Ruby/working-with-files.txt', 'books/programming/Java')

FileUtils.cp('books/programming/Ruby/introduction.txt', 'books/programming/Pascal')
FileUtils.cp('books/programming/Ruby/working-with-files.txt', 'books/programming/Pascal')

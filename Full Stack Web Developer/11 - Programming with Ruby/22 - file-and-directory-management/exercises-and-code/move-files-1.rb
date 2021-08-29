# File: move-files-1.rb
#
require 'fileutils'

FileUtils.mv('books/programming/Ruby/introduction.txt', 'books/programming/Pascal')
FileUtils.mv('books/programming/Ruby/working-with-files.txt', 'books/programming/Pascal')

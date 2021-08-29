# File: create-directory-tree-with-files-2.rb
#
require 'fileutils'

FileUtils.mkdir_p 'books/programming/Ruby'
FileUtils.mkdir_p 'books/programming/Java'
FileUtils.mkdir_p 'books/programming/Pascal'
FileUtils.mkdir_p 'books/marketing/Google'
FileUtils.mkdir_p 'books/marketing/Yandex'

# Files
filename = 'books/programming/Ruby/loops.txt'
File.write(filename, 'Loops in Ruby')

filename = 'books/programming/Ruby/sql.txt'
File.write(filename, 'Structured Query Language')

filename = 'books/programming/Java/data-structures.txt'
File.write(filename, 'Data Structures In Ruby')

filename = 'books/programming/Java/algorithms.txt'
File.write(filename, 'Algorithms and Complexity')

filename = 'books/marketing/Google/segmentation.txt'
File.write(filename, 'Customer Segmentation')

filename = 'books/marketing/Google/adwords.txt'
File.write(filename, 'Google Adwords')

filename = 'books/marketing/Yandex/indexing.txt'
File.write(filename, 'Yandex Indexing')

filename = 'books/marketing/Yandex/keywords.txt'
File.write(filename, 'Keywords Optimization')

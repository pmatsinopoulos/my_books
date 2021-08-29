# File: file-management-4.rb
#
require 'fileutils'

FileUtils.rmdir 'books'
puts "'books' directory exists? #{Dir.exist? 'books'}"

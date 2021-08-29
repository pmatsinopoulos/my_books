# File: file-management-5.rb
#
require 'fileutils'

FileUtils.rm_rf 'books'
puts "'books' directory exists? #{Dir.exist? 'books'}"

# File: tainted_example.rb
#
external_string = ARGV[0]
internal_string = 'Hello World'

puts "External string tainted?: #{external_string.tainted?}"
puts "Internal string tainted:: #{internal_string.tainted?}"


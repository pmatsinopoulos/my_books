# File: shell-out-4.rb
#
list = `ls -l`
puts list.split("\n").first(5)


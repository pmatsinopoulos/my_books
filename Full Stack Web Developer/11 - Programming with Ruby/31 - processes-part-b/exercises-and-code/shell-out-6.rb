# File: shell-out-6.rb
#
list = IO.popen('ls -l')
puts list.read.split("\n").first(5)


# File: shell-out-8.rb
#
require 'open3'

data =<<-STR
hello
foo bar
world
with more foo
here
STR

result = ''
Open3.popen3("grep 'foo'") do |stdin, stdout, stderr|
  stdin.puts data
  stdin.close
  result = stdout.read
end

puts result

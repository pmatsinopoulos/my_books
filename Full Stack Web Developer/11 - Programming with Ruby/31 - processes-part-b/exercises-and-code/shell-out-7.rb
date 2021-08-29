# File: shell-out-7.rb
#
data =<<-STR
hello
foo bar
world
with more foo
here
STR

IO.popen("grep 'foo'", "w") do |stream|
  stream.puts data
end

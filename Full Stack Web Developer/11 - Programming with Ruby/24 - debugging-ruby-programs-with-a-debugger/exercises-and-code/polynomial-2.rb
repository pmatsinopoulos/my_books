# File: polynomial-2.rb
#
def power_of(a, b)
  a * b
end

def polynomial(a, b, c, x)
  a * power_of(x, 2) + b * x + c
end

if ARGV.size != 4
  $stderr.puts "Wrong number of arguments. You need to call like this: ruby #{$0} <a> <b> <c> <x>"
  $stderr.puts "...you will get back the result of 'a * x ^ 2 + b * x + c'"
  exit 1
end

a, b, c, x = ARGV.map(&:to_f)
require 'debug'
ARGV.clear

result = polynomial(a, b, c, x)

puts result

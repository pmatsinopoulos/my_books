# File: exception-15.rb
#
def foo1
  foo2
end

def foo2
  foo3
rescue => ex
  puts "An error has been encountered. The error message is: #{ex.message}"
  puts "The backtrace is: "
  puts ex.backtrace
end

def foo3
  foo4
end

def foo4
  raise 'foo4 raised an error'
end

foo1

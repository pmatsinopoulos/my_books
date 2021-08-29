# File: exception-13.rb
#
def foo1(a)
  foo2(a)
end

def foo2(a)
  foo3(a)
rescue RuntimeError => ex
  puts "An RuntimeError has been encountered. The error message is: #{ex.message}"
rescue RangeError => ex
  puts "A RangeError has been encountered. The error message is: #{ex.message}"
end

def foo3(a)
  foo4(a)
end

def foo4(a)
  if a >= 10
    raise 'foo4 raised an error because argument given is greater than 10'
  else
    raise RangeError, 'foo4 raised an error because argument given is less than 10'
  end
end

print 'Give an integer number: '
a = gets.to_i

foo1 a


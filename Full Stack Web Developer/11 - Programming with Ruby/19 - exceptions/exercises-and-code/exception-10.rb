# File: exception-10.rb
#
def foo1
  foo2
end

def foo2
  foo3
  begin
    foo5
  rescue StandardError => ex
    puts "An error has been encountered. The error message is: #{ex.message}"
  end
end

def foo3
  foo4
end

def foo4
  raise StandardError, 'foo4 raised an error'
end

def foo5
  puts "foo5 will not raise error"
end

foo1

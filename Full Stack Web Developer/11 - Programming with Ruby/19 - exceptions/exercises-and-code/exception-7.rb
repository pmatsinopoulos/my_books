# File: exception-7.rb
#
def foo1
  begin
    foo2
  rescue StandardError => ex
    puts "foo1: An error has been encountered. The error message is: #{ex.message}"
  end
end

def foo2
  begin
    foo3
  rescue StandardError => ex
    puts "foo2: An error has been encountered. The error message is: #{ex.message}"
  end
end

def foo3
  foo4
end

def foo4
  raise StandardError, 'foo4 raised an error'
end

begin
  foo1
rescue StandardError => ex
  "main: An error has been encountered. The error message is: #{ex.message}"
end

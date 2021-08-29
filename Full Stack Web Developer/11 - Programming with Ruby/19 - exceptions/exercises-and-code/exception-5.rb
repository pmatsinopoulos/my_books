# File: exception-5.rb
#
def foo1
  foo2
end

def foo2
  foo3
end

def foo3
  foo4
end

def foo4
  raise StandardError, 'foo4 raised an error'
end

foo1

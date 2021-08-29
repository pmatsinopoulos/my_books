def foo1
  foo2
rescue
  puts 'Catch the error but do nothing with that'
end

def foo2
  foo3
rescue => ex
  puts ex.message
  raise
end

def foo3
  raise RuntimeError, 'this is an error condition'
end

foo1

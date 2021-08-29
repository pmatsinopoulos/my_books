def foo1
  foo2
rescue UncaughtThrowError => ex
  puts "I will handle this: #{ex.message}"
end

def foo2
  raise EOFError, 'this is an eof error'
end

foo1

# File: exception-2.rb
#
def raise_if_not_integer(number)
  unless number.is_a?(Integer)
    argument_error_exception = ArgumentError.new("#{number} has to be an Integer but it is not.")
    raise argument_error_exception
  end
end

def add_integers(a, b)
  raise_if_not_integer(a)
  raise_if_not_integer(b)

  a + b
end

puts add_integers(5, 7.3)

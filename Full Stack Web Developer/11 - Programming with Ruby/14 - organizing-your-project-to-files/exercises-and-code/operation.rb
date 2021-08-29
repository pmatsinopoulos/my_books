# File: operation.rb
#
def do_operation(first_number, second_number, operator)
  case operator
    when '+'
      first_number + second_number
    when '-'
      first_number - second_number
    when '*'
      first_number * second_number
    when '/'
      first_number / second_number
    else
      puts "Error. This operator is not supported!"
  end
end

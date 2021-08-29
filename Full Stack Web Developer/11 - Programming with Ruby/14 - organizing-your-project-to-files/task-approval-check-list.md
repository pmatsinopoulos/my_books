# Task B. 

You need to write a program `calculator.rb` which will be asking the user for 2 integer numbers and the mathematics
operator to apply to them. Then it will be returning the result of the operation. The operations supported should be
the addition, subtraction, multiplication and division. Make sure that your program is using at least one function that
is defined in its own file and that the `calculator.rb` refers to it. The user will be able to terminate the program
by giving an empty response on the question about the operation.

Here is an example run of the program:

``` bash
$ ruby calculator.rb
Give me first number: 5
Give me second number: 4
Give me the arithmetic operator (+-*/): +
The result of the operation is: 9
Give me first number: 3
Give me second number: 3
Give me the arithmetic operator (+-*/): 
$
```

Here is an example implementation:

``` ruby
# File: calculator.rb
#
require_relative './operation'

while true
  print 'Give me first number: '
  first_number = gets.to_i

  print 'Give me second number: '
  second_number = gets.to_i

  print 'Give me the arithmetic operator (+-*/): '
  arithmetic_operator = gets.chomp

  break if arithmetic_operator.empty?

  result = do_operation(first_number, second_number, arithmetic_operator)
  puts "The result of the operation is: #{result}"
end
```

``` ruby
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
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

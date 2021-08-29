# Task B

## B. Write a program that asks the user for 2 numbers and then it prints the maximum of the two. Here is an example run of this program:

``` bash
$ ruby maximum_number.rb
Please, give the first number: 80
Please, give the second number: 90
Maximum number is: 90
$
```

The sample implementation is:

``` ruby
print 'Please, give the first number: '
first_number = gets.to_i
print 'Please, give the second number: '
second_number = gets.to_i

maximum = first_number > second_number ? first_number : second_number

puts "Maximum number is: #{maximum}"
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

# Task C

## C. Write a program that asks the user a number. Then it prints whether the number is odd or even. Here is an example run of this program:
``` bash
$ ruby odd_vs_even.rb
Please, give me the integer number (greater than or equal to 0): 11
This number is odd
$
```
Note that this program should check whether the number given is in the correct range. If not, it should print corresponding message. Only 
numbers greater than or equal to 0 should be allowed.
For example:
``` bash
$ ruby odd_vs_even.rb
Please, give me the integer number (greater than or equal to 0): -12
You didn't give a valid number
$
```

A sample solution is given here:

``` ruby
print 'Please, give me the integer number (greater than or equal to 0): '
number = gets.to_i
if number < 0
  puts "You didn't give a valid number"
else
  number % 2 == 0 ? puts('This number is even') : puts('This number is odd')
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

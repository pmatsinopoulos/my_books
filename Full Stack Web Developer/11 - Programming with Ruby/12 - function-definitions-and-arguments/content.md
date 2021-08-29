Let's start our integrated development environment, RubyMine. We will write the program `area-size-1.rb`:

``` ruby
 1. # File: area-size-1.rb
 2. #
 3. puts "Calculate the area of a geometric shape!"
 4. 
 5. print 'Tell me which geometric shape you want area calculated for: (1) for square (2) for circle (3) for triangle (1/2/3): '
 6. geometric_shape = gets.to_i
 7. if geometric_shape < 1 || geometric_shape > 3
 8.   puts "ERROR! This is not a valid number: #{geometric_shape}. Try between 1 and 3"
 9.   exit 1
10. end
11. 
12. case geometric_shape
13.   when 1
14.     print 'What is the side size of the square? '
15.     square_side_size = gets.to_i
16.     puts "The area size of the square is: #{square_side_size ** 2}"
17.   when 2
18.     print 'What is the radius size of the circle? '
19.     radius_size = gets.to_i
20.     puts "The area size of the circle is: #{(Math::PI * radius_size ** 2).round(2)}"
21.   when 3
22.     print 'What is the one side size of the triangle? '
23.     one_side_size = gets.to_i
24.     print 'What is the other side size of the triangle? '
25.     other_side_size = gets.to_i
26.     puts "The area size of the triangle is: #{(one_side_size * other_side_size / 2.to_f).round(2)}"
27. end
```

The above program calculates the area size of three different geometric shapes: (1) square, (2) circle and (3) triangle.
It is asking the user to select one of the shapes, and then, according to the shape selected, it asks the user to give
the dimensions of the necessary properties of the shape.

> *Note:* The `exit` method is called whenever we want a program to end. The above, exits if the geometric shape integer
given by the user is not in the range 1 to 3. Also, we call `exit` giving a non-0 integer number. This
indicated to the operating system that the program has ended with an error. Any exit code different from 0 means an error.
Whereas exit code 0, means success.

Let's run the above program:

``` bash
$ ruby area-size-1.rb
Calculate the area of a geometric shape!
Tell me which geometric shape you want area calculated for: (1) for square (2) for circle (3) for triangle (1/2/3): 2
What is the radius size of the circle? 20
The area size of the circle is: 1256.64
$
```

The above example run, calculates the area size of a circle. Some things that you may want to have a better look at are the following:

(1) The `case` statement has the `when` clauses having only a literal value. This literal value is compared to the result of the expression
next to the `case` keyword, i.e. to the `geometric_shape`. This is an alternative way of writing this:
``` ruby
case
  when geometric_shape == 1
    ...
  when geometric_shape == 2
    ...
  when geometric_shape == 3
    ...
end
```
that avoids repeating the `geometric_shape ==` part.

(2) When calling `.round()` method you can specify the number of decimal digits that a float number will be rounded to. Try this on irb:
``` ruby
2.2.3 :001 > 5.283567.round(2)
 => 5.28 
2.2.3 :002 > 
```
or this:
``` ruby
2.2.3 :002 > 5.285567.round(2)
 => 5.29 
2.2.3 :003 >
```
You can see how the calls to `.round(2)` round the number `5.283567` and `5.285567`. 

(3) We are using the `Math::PI` to get access to the constant π. This is defined inside the [core Ruby math library](https://ruby-doc.org/core-2.3.0/Math.html).

## Improving the Program with Functions

The above program is doing its work as expected. But it is difficult to read and understand what it is doing.
Let's improve that by the use of functions. Write the `area-size-2.rb` program as follows:

``` ruby
 1. # File: area-size-2.rb
 2. #
 3. 
 4. # Definition of functions:
 5. # ------------------------
 6. def check_for_invalid_input(shape_integer)
 7.   if shape_integer < 1 || shape_integer > 3
 8.     puts "ERROR! This is not a valid number: #{shape_integer}. Try between 1 and 3"
 9.     exit 1
10.   end
11. end
12. 
13. def square
14.   print 'What is the side size of the square? '
15.   square_side_size = gets.to_i
16.   puts "The area size of the square is: #{square_side_size ** 2}"
17. end
18. 
19. def circle
20.   print 'What is the radius size of the circle? '
21.   radius_size = gets.to_i
22.   puts "The area size of the circle is: #{(Math::PI * radius_size ** 2).round(2)}"
23. end
24. 
25. def triangle
26.   print 'What is the one side size of the triangle? '
27.   side_one_size = gets.to_i
28.   print 'What is the other side size of the triangle? '
29.   side_two_size = gets.to_i
30.   puts "The area size of the triangle is: #{(side_one_size * side_two_size / 2.to_f).round(2)}"
31. end
32. 
33. # Execution of program starts here:
34. # ---------------------------------
35. 
36. puts "Calculate the area of a geometric shape!"
37. 
38. print 'Tell me which geometric shape you want area calculated for: (1) for square (2) for circle (3) for triangle (1/2/3): '
39. geometric_shape = gets.to_i
40. 
41. check_for_invalid_input(geometric_shape)
42. 
43. case geometric_shape
44.   when 1
45.     square
46.   when 2
47.     circle
48.   when 3
49.     triangle
50. end
```

The above version of the program does exactly the same thing. But it uses functions to break the big problem to smaller ones. Now the main
program is between lines 33 and 50. Much smaller and easier to read. The first part of the code above, lines 1 till 31, define some functions
that they are later on used by the main program.

![./images/Function Definitions" style="border:1px solid gray; margin: 10px 5px;](./images/example-program-with-function-definitions-2.png)

On the above picture you can see where the functions are **defined** and where the same functions are being **called/invoked**. The program is now easier to read
and we can easier understand its structure. Also, the small functions that we have built are useful for code reuse.

## Function Definition

A function is defined with the keyword `def`. What follows is the name of the function. For example `check_for_invalid_input`. Then, optionally, we may define arguments that this
function is expecting to be called with. 

For example:

``` ruby
def check_for_invalid_input(shape_integer)
  if shape_integer < 1 || shape_integer > 3
    puts "ERROR! This is not a valid number: #{shape_integer}. Try between 1 and 3"
    exit 1
  end
end
```

is a function definition that expects 1 argument to be sent when this function will be called. Whereas the function:

``` ruby
def square
  print 'What is the side size of the square? '
  square_side_size = gets.to_i
  puts "The area size of the square is: #{square_side_size ** 2}"
end
```

is defined such that it expects no arguments to be sent when this function is being called.

This means that calling:

``` ruby
check_for_invalid_input
```

will raise an error, that an argument is missing, whereas 

``` ruby
square
```

will not.

The definition of a function ends with the keyword `end`. Whatever is inside this block (`def ... end`) is considered to
be code that belongs to the function definition.

## Function Invocation

A function is invoked by name. And then the run-time arguments, if any, are being given inside parenthesis. A function cannot be
called if not previously defined. If you try this on irb:

``` ruby
2.2.3 :001> foo(2, 3)
```
will fail with error:

``` ruby
NoMethodError: undefined method `foo' for main:Object
        from (irb):1
```

telling us that `foo` is undefined method. 

> *Note:* In Ruby everything is an object and the functions always belong to an object. That's why they are officially called `methods`. 
We will talk about that when we will be talking about objects in Ruby.

## Mandatory Arguments

Let's see another example of function definition and invocation. Try the program `employees-1.rb`:

``` ruby
 1. # File: employees-1.rb
 2. #
 3. print 'Please, give the number of employees: '
 4. number_of_employees = gets.to_i
 5. 
 6. puts '--------------------'
 7. 
 8. employees = []
 9. number_of_employees.times do
10.   print 'Give first name of employee: '
11.   first_name = gets.chomp
12. 
13.   print 'Give last name of employee: '
14.   last_name = gets.chomp
15. 
16.   print 'Give age of employee: '
17.   age = gets.to_i
18. 
19.   print 'Give salary of employee: '
20.   salary = gets.to_i
21. 
22.   employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}
23. 
24.   puts '******************************'
25. end
26. 
27. employees.size.times do |i|
28.   puts employees[i].inspect
29. end
30. 
31. puts "=========="
```

The above program does not use any functions, but we could use some to make it easier to read. For example, look at this
version here:

``` ruby
 1. # File: employees-2.rb
 2. #
 3. 
 4. # Function definitions
 5. def horizontal_line(character, number_of_times)
 6.   puts character * number_of_times
 7. end
 8. 
 9. # Program starts here
10. print 'Please, give the number of employees: '
11. number_of_employees = gets.to_i
12. 
13. horizontal_line('-', 20)
14. 
15. employees = []
16. number_of_employees.times do
17.   print 'Give first name of employee: '
18.   first_name = gets.chomp
19. 
20.   print 'Give last name of employee: '
21.   last_name = gets.chomp
22. 
23.   print 'Give age of employee: '
24.   age = gets.to_i
25. 
26.   print 'Give salary of employee: '
27.   salary = gets.to_i
28. 
29.   employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}
30. 
31.   horizontal_line('*', 30)
32. end
33. 
34. employees.size.times do |i|
35.   puts employees[i].inspect
36. end
37. 
38. horizontal_line('=', 10)
```

The program has a small improvement. For the printing of horizontal lines it defines the function `horizontal_line` as follows:

``` ruby
def horizontal_line(character, number_of_times)
  puts character * number_of_times
end
```

And then later it uses that. For example on line 31, it calls it with:

``` ruby
horizontal_line('*', 30)
```

This function takes as input 2 arguments, i.e. the character to print and the number of times to print.

It is later on used, invoked, on lines 13, 31 and 38.

The two arguments are mandatory. So, whenever we call this function, we need to give that many number of arguments. If we forgot to 
give an argument, or both, Ruby will raise an error. Try changing the line 13 from `horizontal_line('-', 20)` to `horizontal_line('-')` (file: `employees-3.rb`):

``` ruby
 1. # File: employees-3.rb
 2. #
 3. 
 4. # Function definitions
 5. def horizontal_line(character, number_of_times)
 6.   puts character * number_of_times
 7. end
 8. 
 9. # Program starts here
10. print 'Please, give the number of employees: '
11. number_of_employees = gets.to_i
12. 
13. horizontal_line('-')
14. 
15. employees = []
16. number_of_employees.times do
17.   print 'Give first name of employee: '
18.   first_name = gets.chomp
19. 
20.   print 'Give last name of employee: '
21.   last_name = gets.chomp
22. 
23.   print 'Give age of employee: '
24.   age = gets.to_i
25. 
26.   print 'Give salary of employee: '
27.   salary = gets.to_i
28. 
29.   employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}
30. 
31.   horizontal_line('*', 30)
32. end
33. 
34. employees.size.times do |i|
35.   puts employees[i].inspect
36. end
37. 
38. horizontal_line('=', 10)
```

If you try to run this program, you will get an error:

``` bash
$ ruby employees-3.rb
Please, give the number of employees: 3
employees-3.rb:5:in `horizontal_line': wrong number of arguments (1 for 2) (ArgumentError)
        from employees-3.rb:13:in `<main>'
$
```

The error is `'horizontal_line': wrong number of arguments (1 for 2) (ArgumentError)`. It clearly says that the `horizontal_line` was
invoked with 1 argument instead of 2 (`1 for 2`). 

## Optional Arguments

Now, let's make this function definition a little bit more flexible. For example, let's say that if the caller of the `horizontal_line` function
does not give the number of items they want the character to be printed, then function could assume a default value of 30. Here is the new version
that caters for that (`employees-4.rb`):

``` ruby
 1. # File: employees-4.rb
 2. #
 3. 
 4. # Function definitions
 5. def horizontal_line(character, number_of_times = 30)
 6.   puts character * number_of_times
 7. end
 8. 
 9. # Program starts here
10. print 'Please, give the number of employees: '
11. number_of_employees = gets.to_i
12. 
13. horizontal_line('-')
14. 
15. employees = []
16. number_of_employees.times do
17.   print 'Give first name of employee: '
18.   first_name = gets.chomp
19. 
20.   print 'Give last name of employee: '
21.   last_name = gets.chomp
22. 
23.   print 'Give age of employee: '
24.   age = gets.to_i
25. 
26.   print 'Give salary of employee: '
27.   salary = gets.to_i
28. 
29.   employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}
30. 
31.   horizontal_line('*', 30)
32. end
33. 
34. employees.size.times do |i|
35.   puts employees[i].inspect
36. end
37. 
38. horizontal_line('=', 10)
```

Watch out for the definition of the `horizontal_line` function:

``` ruby
def horizontal_line(character, number_of_times = 30)
  puts character * number_of_times
end
```

It defines a default value for the `number_of_times` argument. The default value is `30`. This means that if the caller does not give a value
for this argument, function will use the value `30` instead.

Having done that, the function invocation on line 13, `horizontal_line('-')` will not longer fail, but, it will print the character `-` 30 times instead. 
This is an example run:

``` bash
$ ruby employees-4.rb
Please, give the number of employees: 2
------------------------------
Give first name of employee: Peter
Give last name of employee: Woo
Give age of employee: 23
Give salary of employee: 1000
******************************
Give first name of employee: Maria
Give last name of employee: Foo
Give age of employee: 40
Give salary of employee: 2000
******************************
{:first_name=>"Peter", :last_name=>"Woo", :age=>23, :salary=>1000}
{:first_name=>"Maria", :last_name=>"Foo", :age=>40, :salary=>2000}
==========
$
```

As you can see, after the prompt to get the number of employees, the line:
```
------------------------------
```
is printed. The `'-'` is printed 30 times.

Let's make this function even more flexible. We will make the first argument optional too. If the caller does not give any argument,
we will be using the character `'-'` to print the horizontal line. See program `employees-5.rb`:

``` ruby
1. # File: employees-5.rb
2. #
3. 
4. # Function definitions
5. def horizontal_line(character = '-', number_of_times = 30)
6.   puts character * number_of_times
7. end
8. 
9. # Program starts here
10. print 'Please, give the number of employees: '
11. number_of_employees = gets.to_i
12. 
13. horizontal_line
14. 
15. employees = []
16. number_of_employees.times do
17.   print 'Give first name of employee: '
18.   first_name = gets.chomp
19. 
20.   print 'Give last name of employee: '
21.   last_name = gets.chomp
22. 
23.   print 'Give age of employee: '
24.   age = gets.to_i
25. 
26.   print 'Give salary of employee: '
27.   salary = gets.to_i
28. 
29.   employees << {first_name: first_name, last_name: last_name, age: age, salary: salary}
30. 
31.   horizontal_line('*', 30)
32. end
33. 
34. employees.size.times do |i|
35.   puts employees[i].inspect
36. end
37. 
38. horizontal_line('=', 10)
```

The new definition of `horizontal_line` now is:

``` ruby
def horizontal_line(character = '-', number_of_times = 30)
  puts character * number_of_times
end
```

which defines both arguments optional. If the `character` is not given, then `'-'` will be assumed. If the `number_of_times` is not given
then 30 will be assumed.

Then on line 13, we just call `horizontal_line`, without giving any argument. And this call prints `'-'` 30 times.

## Variable Number of Arguments

We have learned how to define our function to take mandatory and optional arguments. There is another feature related to function definition
arguments. The variable number of arguments. This allows us to define a function to take any number of arguments. Let's see the following 
example (`any-number-of-arguments-1.rb`):

``` ruby
 1. # File: any-number-of-arguments-1.rb
 2. #
 3. def customer_names(*customers)
 4.   column_width = 35
 5.   puts "#{'First Name'.ljust(column_width)}#{'Last Name'.ljust(column_width)}"
 6.   puts '-' * column_width * 2
 7.   customers.each do |customer|
 8.     first_name = customer.split(' ')[0]
 9.     last_name = customer.split(' ')[1..-1].join(' ')
10.     puts "#{first_name.ljust(column_width)}#{last_name.ljust(column_width)}"
11.   end
12. end
13. 
14. customer_names('Peter Woo', 'John Smith', 'Maria Foo', 'Alejandro Rodriguez de la Pena y de Ybarra', 'George')
15. 
16. puts "\nSome Other Customers:"
17. 
18. customer_names('Peter Woo', 'Jorge Pena', 'Angel Carballo')
```

Pay attention to the function definition on line 3. It defines 1 argument with name `customers` but it prefixes it with a `*`.
This means that whatever real arguments are being given to the function when the functions is called, function body will treat
them as if they are elements of the array with name `customers`. For that reason, on line 7, it calls `.each` to iterate over 
those elements, one by one.

On lines 14 and 18, we are calling the function `customer_names`. See that these 2 calls are calling the same function with
different number of arguments. And these can be any number of arguments.

Run the program and you will get this:

``` bash
$ ruby any-number-of-arguments-1.rb
First Name                         Last Name                          
----------------------------------------------------------------------
Peter                              Woo                                
John                               Smith                              
Maria                              Foo                                
Alejandro                          Rodriguez de la Pena y de Ybarra   
George                                                                

Some Other Customers:
First Name                         Last Name                          
----------------------------------------------------------------------
Peter                              Woo                                
Jorge                              Pena                               
Angel                              Carballo                           
$
```

This technique, to define a function with any number of arguments can be proven useful, but it requires careful programming. What happens if no argument is provided?
What happens if too many arguments are provided? These are questions that need to be answered while designing such functions.

## Hash Argument

Another way to send variable number of values as real arguments to a function is the case in which the function expects 1 argument of type `Hash`.
See the following example (`hash-argument-1.rb`):

``` ruby
 1. # File: hash-argument-1.rb
 2. #
 3. def parse_options(options)
 4.   production = options.delete(:production)
 5.   staging = options.delete(:staging)
 6.   test = options.delete(:test)
 7.   integration = options.delete(:integration)
 8.   puts "Production Server: #{production}"
 9.   puts "Staging Server: #{staging}"
10.   puts "Test Server: #{test}"
11.   puts "Integration Server: #{integration}"
12. end
13. 
14. parse_options(production: '192.168.1.1', staging: '192.168.1.2', test: '192.168.1.3', integration: '192.168.1.4')
```

The above program defines the function `parse_options` taking 1 argument only. And it is not prefixed with a `*`. So, this
cannot be treated like an array of arguments. However, this function treats its argument as a `Hash`. (See what [Hash#delete method does here](https://docs.ruby-lang.org/en/2.3.0/Hash.html#method-i-delete).

Then, when calling the function, on line 14, we are giving as argument this: 
```
production: '192.168.1.1', staging: '192.168.1.2', test: '192.168.1.3', integration: '192.168.1.4'
```
which seems to be a variable number of arguments. It is indeed, but it is, also, a `Hash`, i.e. the value are given using a `key => value` pair.
So, it is not exactly like the case of the program `any-number-of-arguments-1.rb`. But, again, we can give as many keys/values as we like
and as long as the function know what to do with them.

Let's run the program:

``` bash
$ ruby hash-argument-1.rb
Production Server: 192.168.1.1
Staging Server: 192.168.1.2
Test Server: 192.168.1.3
Integration Server: 192.168.1.4
$
```

You can see from the output how the body of the function treated its typical local variable argument as a `Hash`.

## Keyword Arguments

The idea of having a `Hash` argument is good, but it suffers from the fact that is very loose. When one looks at the
definition of a function that takes as typical argument a `Hash` cannot tell which keys are actually allowed to be
sent there. There is an alternative to that. We can use the keyword arguments. 

Program `keyword-arguments-1.rb` below is exactly the same as the `hash-argument-1.rb`, but it uses keyword arguments:

``` ruby
 1. # File: keyword-arguments-1.rb
 2. #
 3. def parse_options(production:, staging:, test:, integration:)
 4.   puts "Production Server: #{production}"
 5.   puts "Staging Server: #{staging}"
 6.   puts "Test Server: #{test}"
 7.   puts "Integration Server: #{integration}"
 8. end
 9. 
10. parse_options(production: '192.168.1.1', staging: '192.168.1.2', test: '192.168.1.3', integration: '192.168.1.4')
```

If you run this program, you will get the same output like for `hash-argument-1.rb`. But it is way much simpler code inside the 
body. You do not have to extract the values from the hash. Local variables that correspond to keyword arguments are automatically
defined with the correct content. So, they are being used immediately on lines 4, 5, 6 and 7. Moreover, the calling of 
the function is like if it is a hash. 

Keyword arguments are pretty cool, although they do have the caveat that if they are too many, the definition of the function
becomes really verbose. So, pick up the definition that suits best to your needs. You have many options. 

## Curved Brackets (Parenthesis) May be Omitted

Before we close the subject of functions and arguments, let me tell you that function curved brackets are not mandatory in Ruby.
Some Ruby developers they use them only if it is absolutely necessary. 

For example, this program is absolutely valid:

``` ruby
1. # File: without-curved-brackets.rb
2. #
3. def foo a, b
4.   puts a + b
5. end
6. 
7. foo 5, 8
```

Both the definition, line 3, and the invocation, like 7, do not include the curved brackets that delimit the typical and the
run-time arguments.

Personally, I prefer to use the brackets when defining the function. When calling the function, usually I use them, but there
are also cases that I don't. For example, when calling `puts` I rarely use brackets:
 
``` ruby
puts 'Hello World'
```
instead of

``` ruby
puts('Hello World')
```
Pick up your own style and stick to that, or discuss and agree with your team.
 
## Closing Note

If you want, you can also watch the following video that describes the content of this chapter using some hands-on exercises inside Linux/Debian environment.

<div id="media-title-video-function-definitions-and-arguments.mp4">Function Definitions And Arguments</div>
<a href="https://player.vimeo.com/video/194657419"></a>

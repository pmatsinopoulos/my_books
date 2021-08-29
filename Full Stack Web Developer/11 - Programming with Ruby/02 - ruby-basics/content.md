## Interactive Ruby - `irb`

Let's start our operating system terminal.

We are on the operating system command prompt and this allows us to issue operating system level commands like the following:

``` bash
ls -l
```

which returns a long list of the contents of the current folder.

As another thing that you should remember is that the command `clear` clears your terminal and moves the terminal prompt at the top of
your terminal window. Try that:

``` bash
clear
```

### Start `irb`

We will now learn how to start a Ruby-specific terminal session. This will give you a Ruby-specific prompt that will allow you to issue
Ruby commands. Let's do that. Type the command `irb` at your operating system terminal prompt.

``` bash
irb
2.2.3 :001 > 
```

The `2.2.3 :001 > ` is the prompt that indicates that you are now in a Ruby shell and that you can give Ruby commands. The part `2.2.3` indicates
the current Ruby version that you are using. On my end it is `2.2.3` but on your machine might be a different version. The part `001` is a number
that will increase by 1 every time you give a Ruby command on this shell. This is useful because `irb` might report back some errors to
you and might associate those errors with the actual command that you have issued earlier.

> `irb` stands for Interactive Ruby.

### Give the first command

Now, let's give the first Ruby command on our Ruby shell. 

``` ruby
2.2.3 :001 > puts 'Hello World!'
Hello World!
 => nil 
2.2.3 :002 > 
```

The `puts 'Hello World!'` is a Ruby command. `irb` takes this input and gives it to Ruby interpreter which interprets that and executes it. The `puts` 
takes the string that follows (`'Hello World!'` on our example) and prints it on the output console. So, this is exactly what Ruby has done via the
`irb` console. The ` => nil ` indicates which value the statement returned as output. It is `nil` on our example. We will talk about return values
of Ruby statements, later on.

You can also see that the input cursor is now standing next to `2.2.3 :002 > ` waiting for the next command to be given by us. Note the `002`, which
indicates that `irb` is waiting for the 2nd command.

`irb` is very useful because it allows you to try Ruby commands in an interactive mode. And of course, you can execute any Ruby command, hence
allowing you to run small or even longer scripts.

We will use `irb` to learn various concepts of the Ruby language. Let's start:

## Variables

Variables are placeholders that can hold content. This is what we have learnt at JavaScript section. They are names pointing to content inside Random Access
Memory. A variable is defined in Ruby using the English alphabet. We need to start the name with a lower case letter of the English alphabet. Also, it can
be started with the character `_` (underscore). When we define a variable we need to give also the content that this variable will be holding.

Let's give the following command on the `irb` prompt:

``` ruby
2.2.3 :002 > a = 2
 => 2 
2.2.3 :003 >
```

This command defines the variable with name `a` and content `2` which is an integer literal value. The content `2` is assigned to the variable `a` using the
assignment operator `=`. Note that this is not the comparison operator that compares two values for equality. This is the assignment operator that takes the
value on the right-hand side and assigns it to the variable on the left-hand side.

Now that when a variable is defined with its content, we can invoke this variable to get its content back:

``` ruby
2.2.3 :003 > a
 => 2 
2.2.3 :004 > 
```
As you can see above, when we gave the command `a`, Ruby returned back to us `2` (indicated by ` => 2`) which is the content of this variable. On the contrary, if
you try to ask for the content of a variable that has not been defined, then you will get an error. Try for example the following command:

``` ruby
2.2.3 :004 > b
NameError: undefined local variable or method `b' for main:Object
        from (irb):4
        from .../.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'
2.2.3 :005 > 
```
On the above, we are trying to access the content of the variable `b`, which has not been defined yet. Hence Ruby don't know what content to return. It reports a
`NameError` with the description `undefined local variable or method 'b' for main:Object`. Note also the `from (irb):4` which indicates which command raised the
error.

## Naming Convention for Variables

When we name variables we use a convention like we do when we write JavaScript programs. When the name of a variable is composed of many words, then we
separate one word from the other using the `_` (underscore) character. For example, let's suppose that we want to create a variable to hold the `number of customers`.
In Ruby, the variable name that we can use is `number_of_customers`. Note that this is not the same like the convention we had on JavaScript. The convention for
JavaScript is that variable to be named `numberOfCustomers`. So, Ruby is using the `snake` convention, whereas JavaScript is using the `camel` convention. 

<table>
  <tr><th>Convention</th><th>Examples</th><th>Language</th></tr>
  <tr><td>Camel</td><td>thisIsMyCamel<br/>numberOfCustomers</td><td>JavaScript</td></tr>
  <tr><td>Snake</td><td>this_is_my_snake<br/>number_of_customers</td><td>Ruby</td></tr>
</table>

Both two statements below are valid Ruby statements:

``` ruby
2.2.3 :005 > numberOfCustomers = 3
 => 3 
2.2.3 :006 > number_of_customers = 3
 => 3 
2.2.3 :007 > 
```

but, as we said, in Ruby, we prefer to use the 2nd version, the *snake* format.

> **Important Note:** Whenever we define a Constant in Ruby, we should be using the Camel format and we should start the name of
the constant with an uppercase Latin letter. But, we will revisit this later on in the Ruby section of this course.

## Change the Content of a Variable

As we learned earlier above, a variable is initialized with content at the moment it is defined, using the assignment operator `=`. This is also the 
operator that you should use if you want to change the content of a variable. See the following example:

``` ruby
2.2.3 :007 > customer_name = 'John Smith'
 => "John Smith" 
2.2.3 :008 > customer_name
 => "John Smith" 
2.2.3 :009 > customer_name = 'Mary Foo'
 => "Mary Foo" 
2.2.3 :010 > customer_name
 => "Mary Foo" 
2.2.3 :011 > 
```

On line `007` we define a new variable with name `customer_name` and content `'John Smith'`. On line `008` we confirm its content by invoking
the variable name. On line `009` we update the content of the variable to be `'Mary Foo'`. We confirm that again on line `010`.

Hence, the assignment operator `=` is used to both initialize and then update the content of a variable.

## Mathematics Operators

### Addition

It is the `+` symbol. Let's try that on the console:

``` ruby
2.2.3 :011 > 5 + 2
 => 7
2.2.3 :12 > 
```
Pretty straightforward.

### Subtraction

It is the `-` symbol.

``` ruby
2.2.3 :012 > 10 - 8
 => 2 
2.2.3 :013 > 
```

### Division

It is the `/` symbol.

``` ruby
2.2.3 :013 > 10 / 3
 => 3 
2.2.3 :014 > 
```

As you can see on the above example, the division `/` that divides integer numbers returns an integer result. It returns the integer part of the
actual division result.

Try this:

``` ruby
2.2.3 :015 > 35 / 9
 => 3 
2.2.3 :016 > 
```
Although we know that `35 / 9` is equal to `3.888...`, the result returned by Ruby is `3`, which is the integer part. Keep that in mind when you
carry out division with integer numbers.

We will learn how to carry out division with real numbers later on.

### Multiplication

It is the `*` symbol.

``` ruby
2.2.3 :016 > 6 * 7
 => 42 
2.2.3 :017 > 
```

### Remainder of a Division

It is the `%` symbol

``` ruby
2.2.3 :020 > 11 % 3
 => 2 
2.2.3 :021 > 
```

If you divide `11` by `3`, then the integer result is `3` and the remainder is `2`. This operator is also called `modulo`.

> *Hint:* This is a nice way to find out whether a number is odd or even. Isn't it?

### Raise Number to a Power of Another

It is the `**` symbol. Try this:

``` ruby
2.2.3 :021 > 5 ** 2
 => 25 
2.2.3 :022 > 
```

### Applying to Variables

Mathematics operators can be applied to the content of the variables, of course, by using the variable names, rather than
literal content as we did above.

``` ruby
2.2.3 :026 > number_of_rooms_per_floor = 5
 => 5 
2.2.3 :027 > number_of_floors = 3
 => 3 
2.2.3 :028 > total_number_of_rooms = number_of_rooms_per_floor * number_of_floors
 => 15 
2.2.3 :029 > 
```

The above example calculates the total number of rooms, given the number of rooms per floor and the number of floors.

## Final Note On Assignment Operator

The assignment operator `=` works by taking whatever is on the right-hand side and assigning it to the left-hand side, which
needs to be a variable. Look at the command `028` above. On the right-hand side we have a multiplication of 2 variables.
Their content is multiplied and the result is saved as content of another variable, which is referenced on the left-hand side
of the operator.

## A Polynomial Ruby Program

Let's now write a small Ruby program, using RubyMine. This program will be saved inside the file `polynomial.rb` and will have the following content:
 
``` ruby
t = 5
result = 4913 + 2108 * t ** 2 - 604 * t ** 3 - 977 * t ** 4 + 8 * t ** 5 + 44 * t ** 6 + 392 * t ** 7 - 193 * t ** 8 - 40 * t ** 9 + 48 * t ** 10 - 12 * t ** 11 + t ** 12
puts result
```

After you save this file, you can run it with the command:

``` bash
ruby polynomial.rb
```

**on your operating system terminal prompt, not on the *irb* prompt**.

You will get the result `4146488`. 

Experiment with other values of `t`.

## Closing Note

For your better understanding, you can watch the following video that describes the content of this chapter using some hands-on exercises inside Linux/Debian environment.

<div id="media-title-video-ruby-basics.mp4-Ruby Basics Video Screencast">Ruby Basics</div>
<a href="https://player.vimeo.com/video/194490593"></a>

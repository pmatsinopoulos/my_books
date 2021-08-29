Until now we have worked with simple Ruby scripts. They were about 5 to 10 lines long, more or less. But, usually, this is not going
to be the case with your production code. You will be required to write lots of code in order to build an application. 

In that case, will you put all your application code into an huge file? No. This is not a recommended practice. You will most
probably have to split your code into smaller chunks of code, and save each one in its own file.

Let's take it from the beginning.

## Application entry point

Every Ruby application, even if it is a simple Ruby script, has a file which is its starting, entry point. Traditionally, this is called `main` in other
languages, like Java or C. The Ruby interpreter will need this file in order to load and execute the commands of the application. In the previous chapters
we worked with scripts like `fibonacci-1.rb`, or `second-degree-polynomial-1.rb`, to name a few examples. Those were the application entry points. We could
have named them `main-1.rb`, or `main-2.rb`, but usually we want to have something descriptive for the application starting point. Something that would
remind us what this Ruby application script is about. 

Let's assume the following file `application-1/main.rb`:

``` ruby
# File: application-1/main.rb
#
puts 'Hello World'
```

This file is the application entry point and we start the application by calling Ruby interpreter and giving as argument this specific file:

``` bash
ruby application-1/main.rb
Hello World
```

Ruby interpreter, takes one-by-one the Ruby statements inside the file and executes them, till it parses the whole file.

## Making A Ruby Script to be an Executable

Usually, we execute a Ruby application by giving the starting point Ruby file as the first argument to the `ruby` program. But, we can also make the
application entry file be the actual *executable* Ruby program, i.e. calling that would internally invoke the Ruby interpreter, which would parse its content.
This is how we do that:

``` ruby
#!/usr/bin/env ruby
#
# File: application-1/main.rb
#
puts 'Hello World'

```
Watch for the line `1`, i.e. `#!/usr/bin/env ruby`. This will tell Unix shell to invoke `ruby` interpreter to further process the contents of the file.

> **Important** You need to have made the file `application-1/main.rb` executable. This is how you can do that: `chmod +x application-1/main.rb`.

Now that you have done that, you can execute the `main` file itself:

``` bash
application-1/main.rb
```

and it will return exactly what the previous version `ruby application-1/main.rb` did.

## Ruby Parsing of Files - `load` and `require`

Nevertheless, as we said at the beginning, applications may be composed of thousands of Ruby statements. It is not practical to have all the application 
statements inside the same file, i.e. inside the application entry point file.

For that reason, we usually have different Ruby files hosting functional components and utilities of our application. When the Ruby statements we
want to use are hosted in separate files, then, the `main.rb` file (or whichever file is the application entry point file) needs to ask Ruby interpreter 
to parse those files too. And, then, we say that `main.rb` file is *dependent* on these files, or these files are the dependencies of the `main.rb` file. 

This dependency may be recursive of course. Files that `main.rb` depends on might depend on other files too.

How a Ruby file asks Ruby interpreter to include in its parsing another file, a dependent file? This is usually done with one of the 2 commands:

1. `require` (or `require_relative`)
2. `load`

The main difference between the 2 being that `require` will not re-parse a file if asked multiple times. It parses it only once. On the other hand,
`load` will parse the file multiple times, every time we are trying to parse a file with `load`, it will parse the content of the file.

## Load Path

Before we delve deeper into the usage of `require` and `load`, let me tell you that when you want to ask Ruby to parse a file then that file needs to
be inside the directories/folders that are declared in the variable `$LOAD_PATH`. If the file you request does not exist inside the directories
specified by this variable, then your request will fail.

Let's see that with an example. Write the following program `lib/addition.rb`. This is the file `addition.rb` that needs to be created inside a folder
with name `lib` in your current folder. The content of the `addition.rb` file is going to be this:

``` ruby
 1. # File: lib/addition.rb
 2. #
 3. def add(array_of_integers = [])
 4.   array_of_integers ||= []
 5.   sum = 0
 6.   array_of_integers.each do |integer|
 7.     sum += integer
 8.   end
 9.   sum
10. end
```

> *Note:* If you don't understand the `array_of_integers ||= []` command, jump to the end of the chapter to read out it.

Then write the program `add_many_numbers.rb` inside your current folder:

``` ruby
1. # File: add_many_numbers.rb
2. #
3. sum = add([5, 6, 7])
4. puts "Sum: #{sum}"
```

The file `lib/addition.rb` defines the function `add()` which takes as argument an array of integers, calculates and returns
the sum of the numbers inside. So, one could say that the `lib/addition.rb` file does nothing. It is a utility file. It's not
an application or program file. The application file is the `add_many_numbers.rb` file, because this is the file that asks Ruby
to actually do things. The `add_many_numbers.rb` wants to add the number 5, 6 and 7 and relies on the function `add()` to achieve
that. It calls function `add()` on line 3.

But does program `add_many_numbers.rb` have access to the definition of the `add()` function? Let's try to run the program:

``` bash
$ ruby add_many_numbers.rb
add_many_numbers.rb:3:in `<main>': undefined method `add' for main:Object (NoMethodError)
$
```

When you run this Ruby program, you will get the error `undefined method 'add' for main:Object (NoMethodError)` and it also
points to line `3` inside the `add_many_numbers.rb` file. It is the problem that `add()` call on line 3 is not something
that Ruby can execute, because it does not know about the definition of the `add()` function (`method` actually, but we 
will postpone this discussion for a later chapter on Object Oriented Programming).

This complaint seems to be reasonable. We have not told Ruby to parse the `lib/addition.rb` file so that it learns about
the definition of the `add()` method. This is where the `require` method comes in handy. We will use the `require` method
to tell Ruby to parse another file, before the point on which we need to use the definitions that take place
in that required file (in that dependency).

Here is the version of the `add_many_numbers.rb` that requires the `addition.rb` file.

``` ruby
1. # File: add_many_numbers.rb
2. #
3. 
4. require 'addition'
5. 
6. sum = add([5, 6, 7])
7. puts "Sum: #{sum}"
```

There is an extra statement `require 'addition'` on line 4. This will ask Ruby to parse the file `addition.rb`. Note that the
`.rb` extension is not given on `require` statements. Only the main part of the filename.

If we now try to run the `add_many_numbers.rb` file, we will get this:

``` bash
$ ruby add_many_numbers.rb
...ruby-2.2.3/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- addition (LoadError)
        from ...rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from add_many_numbers.rb:4:in `<main>'
$
```

There is an error again: `cannot load such file -- addition (LoadError)` and then, a little bit below that: `from add_many_numbers.rb:4`. 
 
This means that the file `addition.rb`, when we tried to load it, with the `require` command on line 4 of `add_many_numbers.rb`, it was
not located by the Ruby interpreter.

This is because the `addition.rb` file is not inside the paths that loads (with `require` or `load`) are executed from. The paths
that are used for `require` and `load` are the paths stored inside the `$LOAD_PATH` array.

Let's enhance the `addition.rb` file to first print the array with the loading paths:

``` ruby
1. # File: add_many_numbers.rb
2. #
3. p $LOAD_PATH
4. 
5. require 'addition'
6. 
7. sum = add([5, 6, 7])
8. puts "Sum: #{sum}"
```

As you can see on line 3, we are printing the contents of the variable `$LOAD_PATH`. Let's run the program. Again, we will get the same error as
before, but also, we will have a look at what folders the `$LOAD_PATH` includes. 

``` bash
$ ruby add_many_numbers.rb
["/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby/2.2.0", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby/2.2.0/x86_64-darwin14", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/vendor_ruby/2.2.0", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/vendor_ruby/2.2.0/x86_64-darwin14", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/vendor_ruby", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0", "/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/2.2.0/x86_64-darwin14"]
/Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- addition (LoadError)
        from /Users/panayotismatsinopoulos/.rvm/rubies/ruby-2.2.3/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
        from add_many_numbers.rb:5:in `<main>'
```

If you read carefully, you will see that the array with load paths does not include your current working directory, neither the `lib` folder inside it. So, 
in order for a `require` to work as expected, we need to make sure that we first add the path to our dependent files inside the `$LOAD_PATH` folder.

This is a new version of the file `add_many_numbers.rb` that makes sure that the `$LOAD_PATH` is correct before we actually use the `require` command:

``` ruby
1. # File: add_many_numbers.rb
2. #
3. $LOAD_PATH << './lib'
4. 
5. require 'addition'
6. 
7. sum = add([5, 6, 7])
8. puts "Sum: #{sum}"
```

On line 3, we add the `"./lib"` folder inside the `$LOAD_PATH`. This means that we are adding the current working folder `lib` sub-folder. If you now 
try to run the `add_many_numbers.rb` program, you will get this:

``` bash
$ ruby add_many_numbers.rb
Sum: 18
$
```
which proves that things are now set up correctly.

## Your current folder is not in `$LOAD_PATH`

Note that your current folder is not in `$LOAD_PATH`, by default. This means that cannot require a file that exists in the same folder as the
application entry point file.

Let's see that with another example. Write the file `max.rb` and save it in your current folder:

``` ruby
1. # File: max.rb
2. #
3. 
4. def max(a, b, c)
5.  [a, b, c].max
6. end
```

> *Note:* Read about the `Array#max` method at the end of the chapter.

The above program takes as input 3 numbers and returns the maximum one. Let's write a main program that uses that (file: `find_max_of_three.rb`)

``` ruby
1. # File: find_max_of_three.rb
2. #
3. require 'max'
4. 
5. puts "Max is: #{max(5, 4, 15)}"
```

On line 3 we require the file `max` that includes the definition of the `max` method, which we call on line 5. Note that both `max.rb` and `find_max_of_three.rb` file
are in the same (the current) working folder. If we run the program, we will get this:

``` bash
$ ruby find_max_of_three.rb
 ... `require': cannot load such file -- max ...
$ 
```
which means that the Ruby interpreter couldn't find the file `max.rb` even if it were inside the same folder as the current folder and the folder of the
main `find_max_of_three.rb` file. 

The problem is solved by adding the current folder in the list of load paths:

``` ruby
1. # File: find_max_of_three.rb
2. #
3. $LOAD_PATH << '.'
4. 
5. require 'max'
6. 
7. puts "Max is: #{max(5, 4, 15)}"
```

Do you see the line 3. It adds the current folder (`"."`) to the loading paths. If you now run the program, then you will get this:

``` bash
$ ruby find_max_of_three.rb
Max is: 15
$
```
which proves that now everything worked as expected.

## `require` vs `load`

We have seen examples of `require`. The difference with `load` is that `load` requires the filename suffix `.rb` to be included
in the `load` statement. Also, the `load` will parse a file multiple times if called multiple times on the same file. `require`
does not parse the file multiple times.

Let's see a `load` example. We will define the file `print_hello_world.rb` (in the current directory) as follows:

``` ruby
# File: print_hello_world.rb
#
puts "Hello world!"
```

This is a very simple file. Let's define now the file `ask_to_print_hello_world.rb` that will be the application entry point and that
will be parsing the dependent file `print_hello_world.rb`. This is the source code:

``` ruby
1. # File: ask_to_print_hello_world.rb
2. #
3. $LOAD_PATH << '.'
4.
5. load 'print_hello_world.rb'
```

You can see that on line 3 we add the current folder to the list of paths that load takes place from. Then on line 5,
we call `load` and we give as argument the `print_hello_world.rb` file.

If we run the above file, we will get this:

``` bash
$ ruby ask_to_print_hello_world.rb
Hello world!
$
```

This is pretty straightforward. Now, let's load the same file 2 times. This is the new version of the file `ask_to_print_hello_world.rb`:

``` ruby
1. # File: ask_to_print_hello_world.rb
2. #
3. $LOAD_PATH << '.'

4. 2.times do
5.  load 'print_hello_world.rb'
6. end
```

If you run the above file, you will get this:

``` bash
$ ruby ask_to_print_hello_world.rb
Hello world!
Hello world!
$
```

You can see that the `load` command has been invoked twice and its content has been parsed twice too. Let's replace the `load` command with a `require`
command now. This is the version with the `require` command:

``` ruby
1. # File: ask_to_print_hello_world.rb
2. #
3. $LOAD_PATH << '.'
4. 
5. 2.times do
6.   require 'print_hello_world'
7. end
```

If you run this file, you will get this:

``` bash
$ ruby ask_to_print_hello_world.rb
Hello world!
$
```

As you can see, although we are calling `require` twice on file `print_hello_world.rb`, the parsing of the file
takes place only once.

And that is the main difference between `load` and `require`.

In summary, you will rarely need to `load` a file. Usually, we `require` files. But, this does not mean that it is
not useful command. For example, you might want to parse a file multiple times, while the file might change from
one load to the next.

## `require_relative`

There is an alternative to setting the value of `$LOAD_PATH` and it is called `require_relative`. With `require_relative`
you tell Ruby where the file to be loaded is in relation to the file path to the current file. Let's see the example `add_many_numbers-2.rb`:

``` ruby
1. # File: add_many_numbers-2.rb
2. #
3. require_relative './lib/addition'
4. 
5. sum = add([5, 6, 7])
6. puts "Sum: #{sum}"
```

We have replaced the 2 lines:
``` ruby
$LOAD_PATH << './lib'
require 'addition'
```
with the single line:
``` ruby
require_relative './lib/addition'
```
which will try to locate the file `addition` relative to the current file path. 

Let's run this program:

``` bash
$ ruby add_many_numbers-2.rb
Sum: 18
$
```
The program is executed without any error in finding and parsing the `addition.rb` file.

## Extra Notes

### `array_of_integers ||= []`

Did you notice the line:

``` ruby
array_of_integers ||= []
```

This line defines the variable `array_of_integers` to be an empty array, **but only if it has not been previously defined or if it were `nil`**. This is
very handy, because it allows us to call `add()` method with a `nil` value and the method would still work. (Try that).
Note also that `array_of_integers ||= []` is equivalent to `array_of_integers = array_of_integers || []`. The 
`array_of_integers || []` is an expression that returns `array_of_integers` if it is truthy, or `[]`, if the `array_of_integers` is falsy,
i.e. when it is `nil` or `false`. 

### `Array#max` method

We have used the expression `[a, b, c].max` inside the `max.rb` file. This is a call to the [`Array#max`](https://ruby-doc.org/core-2.3.1/Enumerable.html#method-i-max) method.
It returns the maximum element in the array. 

## Closing Note

We have explained what are the tools that Ruby provides in order for us to break the big solution to smaller pieces of software components, i.e. the big file,
that can be the whole application, to smaller ones. The smaller files usually define functions and classes and other reusable software artefacts that we then
require to our main application file and we reuse them multiple times.

Try to learn to organize your project to files and sub-folders. It will be easier to maintain and navigate through out your application source code.
Also, it will allow you to reuse lots of your source code parts.


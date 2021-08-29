Make sure that you have started your programming environment RubyMine. We are going to write a lot of Ruby programs. 

The programs that we are going to write are about getting input from the user and sending them output. In fact, the
input will be flowing in from the user keyboard and the output will be sent out to the display device.

## First Ruby Interactive Program

Let's build a program that will interact with the user. Start a new Ruby project on your RubyMine and create a new file.
Add the following content to the file:

> *Note:* You need to type the content without the line numbers.

``` ruby
1. # File robot1.rb
2. #
3. puts 'Hello, I am Zoo, an automated robot that says hello'
4. print 'Please, enter your name: '
5. name = gets
6. puts "Hello #{name}"
```

Here are some notes about the code above:

*`puts` vs `print`*

The `puts` and `print` do the same thing. But, `puts` also introduces a new line at the end of the string. `print` does not
do that. Hence, on a console program, with `puts`, after the given string is printed, then cursor is blinking below the string
printed, at the beginning of the new line. With `print`, after the given string is printed, then cursor is blinking exactly
at the right of the last character of the string.

*`name = gets`*

The command `name = gets` is the definition of a new variable, with name `name` and content the content that is returned
by the function `gets`. The `gets` is waiting for the user to type in a string until he taps on the <kbd>Enter/Return</kbd> key
of the keyboard. Whatever the user types in, including the <kbd>Enter</kbd>, i.e. new line character - `\n`, is being returned by the
`gets` command. This is what is stored inside the `name` variable.

*puts "Hello #{name}"*

This will print the Hello message with the content of the variable `name` printed next to the word `Hello `.
 
Save the file with the name `robot1.rb`. 
 
Try to run the program. For example, on your terminal window, type the following `ruby robot1.rb`. You will get this:
 
``` bash
Hello, I am Zoo, an automated robot that says hello
Please, enter your name: 
```
with the cursor blinking below the `a` letter, 1 blank space next to the end of the `Please, enter your name: ` string.

Type your name and press <kbd>Enter</kbd> key.

``` bash
Hello, I am Zoo, an automated robot that says hello
Please, enter your name: Panos
Hello Panos
```
When you do that, the program replies back with the string `Hello Panos` (or whatever name you have given).

## Comments In the Code

Before we close this chapter, let's give a small explanation about the first 2 lines of the previous program:

``` ruby
1. # File robot1.rb
2. #
```

These lines start with `#`. These are *comments* lines. They include some text that is not parsed by the Ruby interpreter
as useful Ruby statements to execute. They are basically ignored. They serve to hold text that is useful to the reader
of the code.

Comments are very useful for documenting our code, especially when the code is difficult to understand. We might want
to add details about the author of the code or even more explanatory information that would make next readers life easier.

There are 2 forms of comments in Ruby.

### Inline Comments

Inline comments can be put on any line of source code. The comments start from the first `#` symbol encountered in the
source code line till the end of the line. Look at the following program:

``` ruby
name = 'John'          # customer name
address = 'Oxford str' # customer address
```

The above two lines of source code, include both useful Ruby code and comments. On the first line the comment is ` customer name`.
On the 2nd line the command is ` customer address`. 

### Block Comments

Block comments are multiline comments. We start them by putting the comment lines between `=begin` and `=end` blocks. Like the following:
 
``` ruby 
=begin
This program asks the user to give this name.
Then it prints a greeting message with the user name included.
=end
```

Note the following:

1. The `=begin` should be at the start of the line.
2. The `=end` should be at the start of the line.
3. We usually don't put anything after the `=begin`, on the same line.
4. We usually don't put anything after the `=end`, on the same line.

### Block Comments Are Not Recommended

[Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide#no-block-comments) does not recommend using block comments. Read the reason why and the
alternative they are suggesting.

So, according to the Ruby Style Guide, the above piece of code should be better written like this:

``` ruby
# This program asks the user to give this name.
# Then it prints a greeting message with the user name included.
```

## Closing Note

If you want, you can also watch the following video that describes the content of this chapter using some hands-on exercises inside Linux/Debian environment.

<div id="media-title-video-getting-input-sending-output.mp4">Getting Input and Sending Output</div>
<a href="https://player.vimeo.com/video/194470483"></a>

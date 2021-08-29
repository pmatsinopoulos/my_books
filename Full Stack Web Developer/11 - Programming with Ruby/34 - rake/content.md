Some of the compiled languages, like C and C++, which have multiple levels of building their executable, they rely on
a utility which is called `make`. The `make` utility reads the file `Makefile` that specifies how the project artefacts
should be used to generate the final executable of the application. If you want to read more about 
[make and Makefile you can read here](http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/).

In Ruby world, we use a similar utility, called `rake`. The `rake` reads the file `Rakefile` and executes all the task
items that are defined in this file. The power of `rake` (like that of `make`) is that you can define task dependencies.
Hence a task will be executed only if another task has been executed successfully too.

`rake` is heavily used in the whole Ruby eco system. This also explains the number of downloads the corresponding [gem
has on RubyGems](https://rubygems.org/gems/rake)

## Installation

The `rake` utility comes packaged as a gem. So, in order for you to install it, you follow the standard gem installation
process:

``` bash
$ gem install rake
...
```

## Version

You can always get the version of the `rake` utility at your hand, using the following command:

``` bash
$ rake --version
rake, version 10.4.2
$
```

which is `10.4.2` on my machine at the time of this writing.

## `rake` Executes Ruby Code

`rake` executes as Ruby code whatever is inside the `Rakefile` that exists at the current directory. Try to create the following file (`Rakefile`):

``` ruby
# File: Rakefile
puts 'Hello World'
```

Then invoke the `rake` utility at the shell prompt:

``` bash
$ rake
Hello World
rake aborted!
Don't know how to build task 'default'

(See full trace by running task with --trace)
$
```

You can see that `rake` parsed the first line of `Rakefile` and executed that as a normal Ruby statement. However, `rake` fails and prints `rake aborted!`
with an extra explanation `Don't know how to build task 'default'`.

## `default` Task

`rake` executing tasks is called *building* tasks and if you don't specify which task to build, `rake` wants to find a task called `default`. But if this
task does not exist, then it fails with the above message

Let's make `Rakefile` have a `default` task (`Rakefile`):
 
``` ruby
1. # File: Rakefile
2. #
3. task :default do
4.   puts 'Hello World from default task!'
5. end
```

The tasks in `Rakefile` are defined with the `task` method. The first argument is the name of the task (given as symbol). Then the call to `task` needs
to be followed by a block defining what the task needs to do. 

If you run `rake` again, you will see this:

``` bash
$ rake
Hello World from default task!
$
```

## Nothing Fancy about `rake`

`rake` is not very sophisticated. Try the following on your shell terminal:

``` bash
$ ruby -e "require 'rake'; Rake.application.run"
Hello World from default task!
$
```

This is it. Did you get it? All that `rake` binary does is to require the file `rake` (from the `rake` gem) and then call the Ruby statement `Rake.application.run`.

So, if you want to further study the internals of `rake`, you should start [from here](https://github.com/ruby/rake/blob/master/lib/rake/application.rb#L76)

## Task With Prerequisites

You can define as many tasks in your Rakefile as you like. Also, you can define dependencies between them. Let's see another
version of the Rakefile (called `Rakefile-dependencies-1.rb`):

``` ruby
# File: Rakefile-dependencies-1.rb
#
task :hello do
  print 'Hello'
end

task :world do
  print ' World!'
end

task default: [:hello, :world] do
  puts
end
```

The above Rakefile defines three tasks. Two and the default. The default task is dependent on the other two. This means that first the other two
are executed and then the default task.

Try to run this Rakefile with `rake`:

> *Information:* You give the `-f <rakefile>` when your Rakefile is not literally called `Rakefile`.

``` bash
$ rake -f Rakefile-dependencies-1.rb
Hello World!
$
```

## In Sequence

The dependent tasks are executed in sequence. Run the rake file `Rakefile-dependencies-2.rb`:

``` ruby
 1. # File: Rakefile-dependencies-2.rb
 2. #
 3. task :hello do
 4.   puts "Hello ... sleeping for 5 seconds ..."
 5.   sleep 5
 6.   puts "...Hello ends"
 7.   $stdout.flush
 8. end
 9. 
10. task :world do
11.   puts "World ... sleeping for 2 seconds ..."
12.   sleep 2
13.   puts "... World ends"
14.   $stdout.flush
15. end
16. 
17. task default: [:hello, :world] do
18.   puts "... default"
19. end
```

You will get this:

``` bash
$ rake -f Rakefile-dependencies-2.rb
Hello ... sleeping for 5 seconds ...
...Hello ends
World ... sleeping for 2 seconds ...
... World ends
... default
$
```
You can see that the second task, `:world` has been queued behind `:hello` task.

## Task Actions

The task actions are the Ruby statements enclosed within the block given to the `task` call. Note that the first block-level argument
is the task itself in the form of a `Rake::Task` instance. Try this (`Rakefile-actions-1.rb`):

``` ruby
1. # File: Rakefile-actions-1.rb
2. #
3. task :default do |t|
4.  puts t.inspect
5. end
```

``` bash
$ rake -f Rakefile-actions-1.rb
<Rake::Task default => []>
$
```

This means that you can have programmatic access to the task itself using the `Rake::Task` Ruby interface ([Rake::Task](https://ruby.github.io/rake/Rake/Task.html)).

## A Task Can Have Multiple Definitions

A task can have multiple definitions. Each one new encountered it is enhancing the previous ones. This is very useful because you may want to
enhance a task that has been created/defined by a third party library.

Look at the following example (`Rakefile-multiple-definitions-1.rb`):

``` ruby
 1. # File: Rakefile-multiple-definitions-1.rb
 2. #
 3. task :billing do
 4.   puts 'I will now bill!'
 5. end
 6. 
 7. task :ordering do
 8.   puts 'First we need an order'
 9. end
10. 
11. task billing: [:ordering]
12. 
13. task default: [:billing]
```

You can see that the task `:billing` is defined on line 3. However, its definition is enhanced on line 11 by the addition of a dependency, that of the 
task `:ordering`.

Let's run this:

``` bash
$ rake -f Rakefile-multiple-definitions-1.rb
First we need an order
I will now bill!
$
```

## Parallel Execution Of Tasks

`rake` allows you to define prerequisite tasks that can be executed in parallel and not in sequence. You need to use the `multitask` 
method instead of the `task` method.

Here is an example (`Rakefile-multitask-1.rb`):

``` ruby
 1. # File: Rakefile-multitask-1.rb
 2. #
 3. multitask random_chars: [:random_lower, :random_upper] do
 4.   puts "Both parallel tasks have been executed"
 5. end
 6. 
 7. task :random_lower do
 8.   puts "Random lower starts..."
 9.   5.times do
10.     sleep (1..3).to_a.sample
11.     puts ('a'..'z').to_a.sample
12.   end
13.   puts "Random lower ends"
14. end
15. 
16. task :random_upper do
17.   puts "Random upper starts..."
18.   5.times do
19.     sleep (1..3).to_a.sample
20.     puts ('A'..'Z').to_a.sample
21.   end
22.   puts "Random upper ends"
23. end
24. 
25. task default: [:random_chars]
```

The task `random_chars` defines 2 prerequisite tasks. These are going to be executed concurrently, using two different threads.

Let's `rake` that:

``` bash
$ rake -f Rakefile-multitask-1.rb
Random lower starts...
Random upper starts...
K
j
X
o
P
y
N
P
Random upper ends
g
x
Random lower ends
Both parallel tasks have been executed
$
```

As you can see, the two tasks have been executed concurrently.

> Enhance the above `Rakefile` to print the process id and then using `top -l1 -pid <process id> -stats pid,th | tail -n 2`
find out how many threads are executed while the rake is executed. On my end, I saw this:
>
> ```
> $ top -l1 -pid 69072 -stats pid,th | tail -n 2
> PID    #TH
> 69072  3
> $
> ```
> You can see that the number of threads is 3. 1 for the main thread and 2 for the two threads for the parallel tasks.

The rules for thread safe best practices apply here too. You need to make sure that if your Ruby task actions access shared
resources, they do it in a thread-safe mode.

Before we leave the subject of concurrent execution, starting `rake` with the option `--job-stats` will print the number
of threads actually used. Try: `rake -f Rakefile-multitask-1.rb --job-stats`.

## Invoke Specific Task

Your Rakefile may have many tasks defined. Sometimes, you don't want to call the default task, but another one in the list
of defined tasks. You can give the task name you want to execute as first argument of the `rake` command. 

Try this (`Rakefile-task-as-argument.rb`):

``` ruby
1. # File: Rakefile-task-as-argument.rb
2. #
3. task :hello do
4.   puts 'Hello'
5. end
6. 
7. task :world do
8.   puts 'World'
9. end
```

You can execute the task `hello` by trying this one on the shell command:

``` bash
$ rake hello -f Rakefile-task-as-argument.rb
Hello
$
```

## Tasks With Arguments

Sometimes your task might need run-time arguments. Those should be given at the command line level, when user invokes `rake`. The run-time arguments of the
task should be given in square brackets, exactly next to the task name, without any blanks.

For example, the task "welcome" is being invoked with two run-time arguments. The "John" and the "Papas":

``` bash
$ rake welcome[John,Papas]
...
```

If for some reason, you need to have blanks in your run-time arguments, then you will have to enclose the whole 1st argument to rake, including the name task,
into double quotes. For example:

``` bash
$ rake "welcome[John Papas,Mary Woo]"
...
```

On the other side of the implementation, the run-time arguments of a task should be defined at the task definition. For example, see the file `Rakefile-task-arguments-1.rb`:

``` ruby
1. # File: Rakefile-task-arguments-1.rb
2. #
3. task :welcome, [:first_name, :last_name] do |t, arguments|
4.   puts "Hello #{arguments.first_name} #{arguments.last_name}"
5. end
```

You can see how the expected arguments are defined (`[:first_name, :last_name]`) and how these arguments are being accessed within the block of actions.
The second argument to the block is an open struct that gives you access to the arguments by name. Hence, for the first argument `:first_name`, you use
`arguments.first_name` in order to access it.

Try this:

``` bash
$ rake welcome[John,Woo] -f Rakefile-task-arguments-1.rb
Hello John Woo
$
```

## Task With Default Values For Arguments

Sometimes, like we do for method argument definitions, you may want to define default values for the arguments of the task. This is done with the help
of `#with_defaults` which is called on the arguments variable of the block of actions of the task. In fact (`Rakefile-task-arguments-2.rb`):

``` ruby
1. # File: Rakefile-task-arguments-2.rb
2. #
3. task :welcome, [:first_name, :last_name] do |t, arguments|
4.   arguments.with_defaults(first_name: 'Unknown First Name', last_name: 'Unknown Last Name')
5.   puts "Hello #{arguments.first_name} #{arguments.last_name}"
6. end
```

Run this without giving `:last_name`:

``` bash
$ rake welcome[John] -f Rakefile-task-arguments-2.rb
Hello John Unknown Last Name
$
```

## Task With Dependencies And Arguments

How do you define a task that has both arguments and dependencies? Look at the following `Rakefile-task-arguments-3.rb`:

``` ruby
1. # File: Rakefile-task-arguments-3.rb
2. #
3. task :order do
4.   puts 'Processing order'
5. end
6. 
7. task :bill, [:first_name, :last_name] => [:order] do |t, arguments|
8.   puts "Billing #{arguments.first_name} #{arguments.last_name}"
9. end
```

You can see that the arguments follow the name, after a comma. Then, the dependencies are given as value for the
arguments key.

Try to run this `rake bill[Panos,Matsos] -f Rakefile-task-arguments-3.rb`

``` bash
$ rake bill[Panos,Matsos] -f Rakefile-task-arguments-3.rb
Processing order
Billing Panos Matsos
$
```

As you can see, the `order` task has been executed before the `bill` task, and the arguments have been processed
successfully.

## File Creation Tasks

Note that tasks defined with `task` are always executed, if they are traced as a dependency of the root task requested to be executed.
However, there are some special tasks, the ones defined with the method `file` (rather than `task`) which are executed only if the
corresponding file **does not exist**.
 
Let's see this example `Rakefile-file-task-1.rb`:

``` ruby
1. # File: Rakefile-file-task-1.rb
2. #
3. file 'foo_text_file.txt' do
4.   puts 'Executing foo_text_file task...'
5.   File.write('foo_text_file.txt', 'This is foo text file')
6.   puts '...end of foo_text_file task'
7. end
8. 
9. task default: 'foo_text_file.txt'
```

This Rakefile defines a file task as the default task. The file task name is `"foo_text_file.txt"` and refers to a file on the file
system. If that file exists, then the actions of that task will not be executed. If that file does not exist, then the actions of this
task will be executed. Note that the current actions include the actual creation of the file `"foo_text_file.txt"`. That means that
the first call to `rake -f Rakefile-file-task-1.rb` will execute the actions, but the second call will not:

``` bash
$ rake -f Rakefile-file-task-1.rb 
Executing foo_text_file task...
...end of foo_text_file task
$ rake -f Rakefile-file-task-1.rb 
$
```

Of course, at the first run of `rake -f Rakefile-file-task-1.rb` above, the execution created the file `foo_text_file.txt`, which the second
execution found and task execution was skipped.

In summary, the existence of the file is an indication that the task has been executed on a previous run and hence task is not executed on current run. On the other
hand, the absence of the file is an indication that the task has not been executed on a previous run, and the task actions take place on current run.

This is one way task execution state (ran or not) can persist between executions of the `rake`. 

## Directory Tasks

The `directory` task is used to create a directory. It is a special task that does not accept prerequisites and actions at the moment it is first
defined. But then, you can use `file` or `task` tasks to add prerequisites and actions. Note also that the directory is not created if already there.

Let's see this example (`Rakefile-directory-tasks-1.rb`):

``` ruby
1. # File: Rakefile-directory-tasks-1.rb
2. #
3. directory 'foo-directory'
4. task 'foo-directory' => :announce
5. task :announce do
6.   puts "About to create a directory"
7. end
8. task default: 'foo-directory'
```

If you run `rake` on the above file you will see this:

``` bash
$ rake -f Rakefile-directory-tasks-1.rb
About to create a directory
mkdir -p foo-directory
$ rake -f Rakefile-directory-tasks-1.rb 
About to create a directory
$
```
The first `rake` run creates the directory whereas the second one does not.

## Rules

Rakefile allows you to define rules for dynamically defined tasks. In other words, you don't define the tasks, but you define the
rules that define the tasks on the fly.

Let's understand that by an example (`Rakefile-rules-1.rb`):

``` ruby
1. # File: Rakefile-rules-1.rb
2. #
3. rule '.txt' do |t|
4.   puts "This is executed for every task that ends with .txt. This one is #{t.name}"
5. end
```

This rule above will match any task requested whose name ends with `.txt`. Try to run this:

``` bash
$ rake foo.txt -f Rakefile-rules-1.rb
This is executed for every task that ends with .txt. This one is foo.txt
$
```

or this:

``` bash
$ rake another-task-ending-with.txt -f Rakefile-rules-1.rb
This is executed for every task that ends with .txt. This one is another-task-ending-with.txt
$
```

However, if you try `rake oops -f Rakefile-rules-1.rb` ,you will get `rake aborted` error:

``` bash
$ rake oops -f Rakefile-rules-1.rb
rake aborted!
Don't know how to build task 'oops' (see --tasks)
/Users/p...rake:27:in `<top (required)>'
/Users/p.../ruby_executable_hooks:15:in `eval'
/Users/p.../ruby_executable_hooks:15:in `<main>'
(See full trace by running task with --trace)
$
```

Note that the first argument to `rule` can be a regular expression, if you want to match more complex task names. Also, the
`rule` may be dependent on other names/tasks too.

See file `Rakefile-rules-2.rb`:

``` ruby
1. # File: Rakefile-rules-2.rb
2. #
3. rule '.lol' do |t|
4.   puts "#{t.name}"
5. end
6. 
7. rule(/\AABC.+z\z/ => '.lol') do |t|
8.   puts "#{t.source}/#{t.name}"
9. end
```

The rule on line 7, will create dynamically any task whose name starts with `ABC`, then one or more characters follow and the name
ends with `z`. All these tasks matched will depend on other tasks that need to be there, with same name as the original task but with their
ending being replaced with `.lol`.

Try to run this rake task as follows:

``` bash
$ rake ABCfooz -f Rakefile-rules-2.rb
ABCfooz.lol
ABCfooz.lol/ABCfooz
$
```

Note that inside the actions, the `t.course` refers to the dependent task names, where as `t.name` refers to the task name itself.

Note that `rule` basically creates `file` tasks on the fly. This means that if the file that corresponds to the task name created dynamically
already exists, this rule is never executed.

Let's see the file `Rakefile-rules-3.rb`:

``` ruby
 1. # File: Rakefile-rules-3.rb
 2. #
 3. rule '.lol' do |t|
 4.   puts "#{t.name}"
 5.   File.write(t.name, "This is file #{t.name}")
 6. end
 7. 
 8. rule(/\AABC.+z\z/ => '.lol') do |t|
 9.   puts "#{t.source}/#{t.name}"
10. end
```

If you run this like this `rake ABCdefz -f Rakefile-rules-3.rb` it will create the file `ABCdefz.lol` thanks to the rule defined
on lines 3 to 5. However, if you run this for a second time, the file will not be created, because the rule will not be executed.

``` bash
$ rake ABCdefz -f Rakefile-rules-3.rb 
ABCdefz.lol
ABCdefz.lol/ABCdefz
$ rake ABCdefz -f Rakefile-rules-3.rb 
ABCdefz.lol/ABCdefz
``` 

You can understand that if the `rule` is being combined with the `file` tasks, then you can have something very dynamic that 
persists its state in between the `rake` runs.

## Task Description

`rake` supports the command line switch `--tasks` or `-T` that prints the list of tasks that are loaded. Try this with `Rakefile-task-desc-1.rb`:

``` ruby
 1. # File: Rakefile-task-desc-1.rb
 2. #
 3. desc "Prints Hello"
 4. task :hello do
 5.   puts 'Hello'
 6. end
 7. 
 8. desc "Prints World"
 9. task :world do
10.   puts 'World'
11. end
```

If you call `rake --tasks -f Rakefile-task-desc-1.rb` you will get the list of tasks that are loaded by the rakefile and their short description as 
defined inside the rakefile using the `desc` method.

``` bash
$ rake --tasks -f Rakefile-task-desc-1.rb
rake hello  # Prints Hello
rake world  # Prints World
$
```

## Namespaces

This is a very common feature on all Ruby projects that use `rake`. Usually, the tasks are not defined in the global namespace, but they
are scoped within a namespace that makes sense for the tasks at hand, of within the space of the owner/company that defines those tasks.
This makes sure that when a project imports and uses multiple Rakefiles, from third parties too, there is no name clashing that would
generate unexpected behaviours.

The namespaces are defined with the `namespace` method that takes as argument the name of the namespace. Then, in the block that follows,
one defines the tasks.

Look at the file `Rakefile-namespace-1.rb`:

``` ruby
1. # File: Rakefile-namespace-1.rb
2. #
3. namespace :database do
4.   task :backup do
5.     puts "About to backup database"
6.   end
7. end
```

You can see the definition of a namespace. The namespace has name `database`. The task inside this namespace has name `backup`.
Hence the full name of the task is `database:backup`. Watch out! It is single colon `:` and not double colon `::` like we use
when giving full names of constants in Ruby.

This means that you need to call the whole name of the task:

``` bash
$ rake database:backup -f Rakefile-namespace-1.rb 
About to backup database
$
```

## Rakefile Path

When issuing the rake command in a terminal, Rake will look for a `Rakefile` in the current directory. If a `Rakefile` is not found, it will search 
parent directories until one is found. As far as rake is concerned, all tasks are run from the directory in which the Rakefile resides.
Note also that not all tasks need to be included in a single `Rakefile`. Additional rake files (with the file extension `.rake`) may be placed 
in `rakelib` directory located at the root folder of your project.

## Closing Note

The `rake` will be heavily used throughout the next chapters. You can read more about it [here](https://ruby.github.io/rake/README_rdoc.html).

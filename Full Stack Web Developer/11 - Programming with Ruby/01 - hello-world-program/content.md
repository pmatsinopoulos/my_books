## Is Ruby Installed?

Before you actually write your first Ruby program, you need to make sure that you have latest Ruby installed.
Can you check that? Give the following command on your terminal:

``` bash
ruby --version
```

You should get something like this:

``` bash
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
```

which confirms that you have Ruby installed. My version is `2.2.3`. You can find which is the latest version from the official
Ruby site [here](https://www.ruby-lang.org/en/).

If you do not have Ruby installed, then you need to follow the instructions on how to install it on your operating system.
On Mac OS X, you can install it with `brew install ruby`. Even better, you can install it via the [Ruby Version Manager](https://rvm.io).
RVM will give you the ability to have many different versions of Ruby installed. Hence, different projects on your machine may
be using different versions of Ruby. It also makes sure that it isolates the gems of each project. Which is very cool too. We have not talked
about gems yet. We will do it later. But, bear that in mind. RVM does very good job to isolate the Ruby version and gems that are used
per project. Note also that RVM can be installed both on Mac OS X and on Linux.

> *Note:* We are going to have a chapter on `rvm` later on.

This link [here](https://www.ruby-lang.org/en/documentation/installation/#apt) will tell you how you can install Ruby on Debian/Ubuntu, in case
you do not want to install `rvm` yet. 

The general Ruby installation page is [here](https://www.ruby-lang.org/en/documentation/installation) just in case you want to have a look about
all the available installation options.

## Write Your First Program

Let's now write your first Ruby program.

You start RubyMine and a new Ruby project. Watch the next video to see how:

<div id="media-title-video-start-ruby-project-in-rubymine.mp4">How to start a new Ruby project on RubyMine</div>
<a href="https://player.vimeo.com/video/194518524"></a>

This project will only have 1 file, the `main.rb`. Create a new file in the project, name it `main.rb` and write the following content:

``` ruby
puts 'Hello World!'
```

Save the file. 

> **Important** Ruby statement files need to have a filename extension `.rb`. This indicates to Ruby specific IDEs, like RubyMine, that they
have to deal with Ruby content. They treat this content in a special way, like, for example, highlighting the Ruby reserved words.

## Execute the Program

You can execute the program from the terminal window. At the bottom of RubyMine, click on the `Terminal`. This will open a new terminal being part of 
RubyMine IDE panes. As soon as the terminal is started and open, the current folder will be the folder of your RubyMine project.

You can now give the command:

``` bash
ruby main.rb
```

which, if everything goes well, will print the message: `Hello World!`.

Alternatively, you can execute the program from RubyMine itself. Right-click on the `main.rb` file and select `Run...`. This will open a terminal at the
bottom and will run the program. The program output will be printed on the terminal. Then the terminal session will terminate (but terminal output will still be
visible).

## Closing Note.

Congratulations! That was your first Ruby program!

You can watch the following two videos that demonstrate this small exercise! 1 on Mac and 1 on Linux/Debian.

<div id="media-title-video-ruby-hello-world-edit-and-run.mp4">How to write a Ruby program on Mac OS X, inside RubyMine</div>
<a href="https://player.vimeo.com/video/194497037"></a>
           
<div id="media-title-video-hello-world-program-ruby-linux.mp4">How to write a Ruby program on Linux/Debian, using Geany as IDE</div>
<a href="https://player.vimeo.com/video/194488214"></a>

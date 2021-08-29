You need to write a program that will do a count down, starting from 100 and ending to 1. It should be sleeping in between
steps by 1 second. If the user presses <kbd>Ctrl + C</kbd> or running program receives signal 15 (`SIGTERM`), then program
should pause and ask user whether they want to really terminate the program. If user answers 'yes', then program should be terminated.
Otherwise, program should continue the countdown.

Here is a short video demonstrating the running program.

<div id="media-title-video-signals-task.mp4">Signals - Task Demo</div>
<a href="https://player.vimeo.com/video/195352076"></a>         

Here are some hints:

1. You may define a custom exception to rescue instead of rescuing any of the Ruby standard exceptions.
2. You can trap the signals that program is interested in. The trapping code might raise an instance of your custom exception class.
3. You rescuing code should ask the user. If user answers with 'yes', then you should exist the loop.

> **Important:** Now that you start writing Ruby programs, and the more complex they become, 
you may want to, first, introduce yourself to debugging Ruby programs using a debugger. 
We have a special chapter for this: `Debugging Ruby Programs With a Debugger`.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

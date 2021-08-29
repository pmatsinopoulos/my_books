You need to write an interactive file manager. In fact:

* This program displays the contents of the folder that is given as argument.
* The contents are displayed recursively. Both directories and files are displayed.
* Next to each entry we have a number that uniquely identifies the entry and whether the
entry refers to a file or a directory.
* Then program allows the user to ask for a command.
    1. can give `q` to exit the program
    2. can give the number of any of the entries and then a command either
        * copy with `c` or
        * move with `m` or
        * delete with `d` or
        * go back with `b`
    3. if the command is copy, then program should ask the user to give the destination folder using the index of the folder.
    When the user gives the destination folder, then program does the copy.
    4. if the command is move, then program should ask the user to give the destination folder using the index of the folder.
    When the user gives the destination folder, then program does the move.
    5. if the command is delete, then program deletes the entry. If the entry is a folder with contents it deletes the whole folder and its contents.
* User can give the command list `l`. In that case, program prints the contents of the current folder.
* Program uses a Logger to keep track of all changes that it does to the directory structure after the commands of the user.
The log file is called 'file-manager.log'

This is an example run of the program:

<div id="media-title-video-task-file-and-directory-management.mp4">Task - File and Directory Management</div>
<a href="https://player.vimeo.com/video/196111066"></a>

Thinks that you need to take care of:

1. Think about encapsulating your file processing actions implementation into a class.
2. Otherwise, create small methods/functions each one doing a specific thing, with clear code and easy to read and understand.
3. Make sure that you validate the command line run-time arguments that the program is started with.
4. There is a gotcha for programs that take input arguments and the usage of `gets`. Read the previous chapter where `ARGV` is explained.
5. Make sure that you handle invalid input of the user. Wrong commands and wrong indexes. Your program should not fail if wrong commands or wrong indexes are given.
6. Make sure that you rebuild your internal index of the files whenever the user carries out an action. Otherwise, you will mess things up.
7. Use logger to log info messages for whenever you execute a user action. Use logger error messages to log error conditions that occur.

Good Luck!

> **Important:** Your Ruby tasks and relevant programs will becoming more and more complex. If you have not done yet, 
you may want to introduce yourself to debugging Ruby programs using a debugger. 
We have a special chapter for this: `Debugging Ruby Programs With a Debugger`.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

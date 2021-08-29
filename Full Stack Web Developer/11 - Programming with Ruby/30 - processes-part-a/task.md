{% quiz %}

# Task B

You need to write a program in Ruby that sorts the lines of text files. Here is how the program should be called:

``` bash
$ ruby sort-lines.rb <path/to/text/file/to/sort/lines/of>
$
```

The sorted lines of the file should be stored into a file with the same name as the original file, but with main filename 
suffixed with `-sorted`. In other words, if the original file is `foo.txt`, then the sorted output file should be `foo-sorted.txt`.

The program should be able to sort multiple files with one command call. The files should be given as run-time arguments. Example:

``` bash
$ ruby sort-lines.rb foo.txt bar.txt mary.txt jo.txt
$
```

However, the processing of those files should be done in parallel and not sequentially.

Note that if only 1 file is given to sort, then no new child process should be forked.

You also have to name the child process with a new name that would reveal which file they are processing. Here is a snapshot of the
process running to sort 3 files:

``` bash
  UID   PID  PPID   C STIME   TTY           TIME CMD
  501 83013 83010   0  8:49AM ttys001    0:00.00 sorting_streams-2.txt    
  501 83012 83010   0  8:49AM ttys001    0:00.00 sorting_streams-1.txt   
  501 83011 83010   0  8:49AM ttys001    0:00.00 sorting_sort-lines.txt    
  501 83010 81070   0  8:49AM ttys001    0:00.03 ruby sort-lines.rb sort-lines.txt streams-1.txt streams-2.txt
    0 83016 82823   0  8:49AM ttys003    0:00.00 ps -ahrf
```

As you can see above, the program has been called as `ruby sort-lines.rb sort-lines.txt streams-1.txt streams-2.txt` and it
has spawned 3 processes to sort the 3 files. The spawned processes have names (see `CMD` column) that reveal the file each
one sorts. (`sorting_streams-2.txt`, `sorting_streams-1.txt`, `sorting_sort-lines.txt`).

Hint: Solve the program for one file. Then introduce parallelism by spawning child processes, one per file to sort.

**Important** Upload your work on your Github account. You Mentor will evaluate that online.

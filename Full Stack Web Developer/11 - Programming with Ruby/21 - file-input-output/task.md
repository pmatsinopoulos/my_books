You need to write a Ruby program that would process an input CSV file and would write out another CSV file. The input file is the following file
with the customers:
```
First Name,Last Name,Address,Phone
John,Smith,"795 E DRAGRAM, TUCSON AZ 85705, USA",(541) 754-3010
Peter,Papas,"Schulstrasse 4, 32547 Bad Oyenhausen, Germany",232-321-2
Mary,Foo,"AGIA SOFIA 5, 19002, KOROPI, GREECE",378-3902-1
Paul,Beach,"5TH AVENUE 121, NEW YORK, USA",379-948-22
```
and let's suppose that it is stored inside the CSV file with name `customers.csv`.

You need to generate the file `customers-normalized-phones.csv`. The output CSV should have the same headers and data like
the input one, but the phone numbers should be normalized, i.e. the non-digit characters should be deleted.

Hence, the `customers-normalized-phones.csv` file for the `customers.csv` file example should be:

```
First Name,Last Name,Address,Phone
John,Smith,"795 E DRAGRAM, TUCSON AZ 85705, USA",5417543010
Peter,Papas,"Schulstrasse 4, 32547 Bad Oyenhausen, Germany",2323212
Mary,Foo,"AGIA SOFIA 5, 19002, KOROPI, GREECE",37839021
Paul,Beach,"5TH AVENUE 121, NEW YORK, USA",37994822
```

You also need to take care of the following:

1. The program should be invoked like this:

 ``` bash
 $ ruby task.rb <input-csv-filename> <output-csv-filename>
 ```
 
In other words, the filename of the input and output should not be hard coded into the program, but they should be provided on the command line
as run-time arguments.

2. You should use the CSV standard library.
3. You should use a Logger to log the data that you get in and the data that you write out.
4. You should check that the run-time arguments given are as expected, i.e. that command line should contain 2 run-time arguments.
Otherwise, program should terminate gracefully with `exit` and should print a message to the standard error channel (e.g. `$stderr.puts 'You should provide input and output filenames'`).
Also, it should log the error in the log file.
5. Note that the output file should also have the headers that the input file has. But, please, don't hard code the headers into your Ruby program.
You can always get the headers of the input file after you read the first line using the method `#headers`. So, after you read the first line of input, but
before writing the first line of output, you need to output the headers first. Make sure you do that only for the first line.
6. Find a way to delete the phone non-digit characters. Maybe the `#gsub()` method on `String` might be useful to you. Unless you can find another way to do that.
7. Make sure that you flush the output after you write a line. 

> **Important:** Your Ruby tasks and relevant programs will becoming more and more complex. If you have not done yet, 
you may want to introduce yourself to debugging Ruby programs using a debugger. 
We have a special chapter for this: `Debugging Ruby Programs With a Debugger`.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

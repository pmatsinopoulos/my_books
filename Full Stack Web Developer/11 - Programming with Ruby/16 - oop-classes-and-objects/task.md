{% quiz %}

# Task B. 

Write a program that using a `Struct` will model a student with the following attributes:

1. First Name (string)
2. Last name (string)
3. Courses Enrolled (array of strings)

Then in your program, ask the user to give you the number of students and for each one of the students
their details. Then print the details of the students.

Here is a sample run of the program:

``` bash
$ ruby
Give number of students: 2
Student 1:
...First Name: John
...Last Name: Smith
...Courses Enrolled (give a comma separated list): Maths, Geometry
Student 2:
...First Name: Maria
...Last Name: Foo
...Courses Enrolled (give a comma separated list): Geometry, Biology, Geography
First Name                    |Last Name                     |Courses Enrolled              
------------------------------|------------------------------|------------------------------
John                          |Smith                         | Maths                         
                                                             | Geometry                      
------------------------------|------------------------------|------------------------------
Maria                         |Foo                           | Geometry                      
                                                             | Biology                       
                                                             | Geography                     
------------------------------|------------------------------|------------------------------
$
```
Make sure that the courses are printed stacked, one on top of the other. This task will 
be highly scored if it breaks the whole problem into smaller pieces implemented with their
own function each.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

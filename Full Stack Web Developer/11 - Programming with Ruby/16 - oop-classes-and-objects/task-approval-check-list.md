# Task B. 

Write a program that using a `Struct` will model a student with the following attributes:
1. First Name (string)
2. Last name (string)
3. Courses Enrolled (array of strings)
Then in your program, ask the user to give you the number of students and for each one of the student
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

Here is a sample implementation:

``` ruby
$LOAD_PATH << '.'

require 'task_student_model'
require 'task_helpers'

students = ask_user

column_width = 30
column_delimiter = '|'

print_column_headers(column_width, column_delimiter)

print_horizontal_line(column_width, column_delimiter)

print_students_data(students, column_width, column_delimiter)
```

``` ruby
# File: task_student_model.rb
#
Student = Struct.new(:first_name, :last_name, :courses_enrolled)
```

``` ruby
# File: task_helpers
#
def ask_user
  result = []
  print 'Give number of students: '
  number_of_students = gets.to_i
  number_of_students.times do |i|

    puts "Student #{i + 1}:"
    print '...First Name: '
    first_name = gets.chomp.strip

    print '...Last Name: '
    last_name = gets.chomp.strip

    print '...Courses Enrolled (give a comma separated list): '
    courses_enrolled = gets.chomp.strip
    courses_enrolled = courses_enrolled.split(',').map { |course_enrolled| course_enrolled.strip }

    result << Student.new(first_name, last_name, courses_enrolled)
  end
  result
end

def column_headers
  ['First Name', 'Last Name', 'Courses Enrolled']
end

def print_column_headers(column_width, column_delimiter)
  puts column_headers.
      map {|column_header| "#{column_header.ljust(column_width)}"}.
      join(column_delimiter)
end

def print_horizontal_line(column_width, column_delimiter)
  puts column_headers.size.times.map { '-' * column_width }.join(column_delimiter)
end

def print_students_data(students, column_width, column_delimiter)
  students.each do |student|

    # print First Name and Last Name
    print [student.first_name, student.last_name].
            map {|student_datum| student_datum.ljust(column_width)}.
            join(column_delimiter)

    # print courses, stacked one on top of the other
    student.courses_enrolled.each_with_index do |course_enrolled, index|
      if index > 0
        print 2.times.map { ' ' * column_width }.join(' ')
      end
      puts "| #{course_enrolled.ljust(column_width)}"
    end

    # print horizontal line
    print_horizontal_line(column_width, column_delimiter)
  end
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

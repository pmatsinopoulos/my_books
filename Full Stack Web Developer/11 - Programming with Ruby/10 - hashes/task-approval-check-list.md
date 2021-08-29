# Task B 

You need to implement the following program. It asks the user to enter the names
and ages of some people. Then it needs to print all the names of the people that have
age above 50. Note that the program should be asking names and ages until user enters
an empty name and an empty age.

Here is an example execution of the program:

``` bash
$ ruby task.rb
Give me the name of the person: Panos
Give me the age of the person: 20
Give me the name of the person: John
Give me the age of the person: 55
Give me the name of the person: Maria
Give me the age of the person: 50
Give me the name of the person: George
Give me the age of the person: 60
Give me the name of the person: 
Give me the age of the person: 
Name: John is above 50
Name: George is above 50
$
```

Here is a sample implementation:

``` ruby
# File: task.md
#
people = {}
while true
  print 'Give me the name of the person: '
  name_given = gets.chomp
  print 'Give me the age of the person: '
  age_given = gets.to_i
  break if name_given.empty? || age_given == 0

  people[name_given] = age_given
end

people.each do |name, age|
  puts "Name: #{name} is above 50" if age > 50
end
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

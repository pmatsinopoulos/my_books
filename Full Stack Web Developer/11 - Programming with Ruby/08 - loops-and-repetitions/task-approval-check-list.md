# Task B. You need to implement the following program.

1. Program asks the user an integer number greater than or equal to 1 and less than or equal to 1000000.
2. If the number given is not in the correct range then program should ask the user again, until user gives a correct number.
3. If the number given is in the correct range, the program will print the first 20 powers of that number.

For example, if the number given is 20, it should print:

``` bash
The first 20 powers of 20 are: 
20 400 8000 160000 3200000 64000000 1280000000 25600000000 512000000000 10240000000000 204800000000000 4096000000000000 81920000000000000 
1638400000000000000 32768000000000000000 655360000000000000000 13107200000000000000000 262144000000000000000000 5242880000000000000000000 
104857600000000000000000000
```

And indicative solution is given here:

``` ruby
# File: task-ask-number.rb
#
LOW_LIMIT = 1
MAX_LIMIT = 1_000_000
POWER_MAX = 20

number_given = 0
while number_given < LOW_LIMIT || number_given > MAX_LIMIT
  print "Please, give me a number from #{LOW_LIMIT} up to #{MAX_LIMIT} (including): "
  number_given = gets.to_i
end

puts "The first #{POWER_MAX} powers of #{number_given} are: "

1.upto POWER_MAX do |i|
  print "#{number_given ** i} "
end

puts "\n--------------"

```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.


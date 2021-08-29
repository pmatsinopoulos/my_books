# Task B

Your student has been assigned the following:

Write a ruby program that would ask the user to give their age. Any value given below 2 or above 121 would raise an `InvalidUserAge` custom exception.
This is a sample run of the program with age given to be `1`:
``` bash
$ ruby age_validator.rb
Please, give me your age (2 up to 121): 1
task.rb:5:in `validate_age!': Invalid User Age 1! Has to be between 2 and 121 (InvalidUserAge)
        from task.rb:12:in `<main>'
$
```
And this is a run with a valid age given:

``` bash
$ ruby age_validator.rb
Please, give me your age (2 up to 121): 60
Thanks, your age 60 is within range!
$
```

Pay attention to the following:

1. the validation of the age should take place within a function dedicated for that.
2. If the age given is invalid the exception message should be something like `Invalid User Age <age given>! Has to be between 2 and 121`.
3. If the age given is valid the message printed should be like `Thanks, your age <age given> is within range!`.

This is an indicative implementation:

``` ruby
class InvalidUserAge < StandardError; end

def validate_age!(age)
  if age < 2 || age > 121
    raise InvalidUserAge, "Invalid User Age #{age}! Has to be between 2 and 121"
  end
end

print 'Please, give me your age (2 up to 121): '
age = gets.to_i

validate_age! age

puts "Thanks, your age #{age} is within range!"
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

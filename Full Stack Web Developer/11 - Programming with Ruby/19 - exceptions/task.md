{% quiz %}

# Task B

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

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

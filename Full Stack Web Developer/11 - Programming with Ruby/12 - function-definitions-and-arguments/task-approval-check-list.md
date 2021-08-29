# Task B

Make sure that your student writes a program with the following properties:

1. defines a function, named `print_reverse_keys_with_values`.
2. the function takes as argument a hash.
3. function reverses the keys with values and prints the new hash.
4. note that the function does not alter the original hash.

Hence, assuming that the hash is `{a: 1, b: 2}`, then, when calling the function, it should
print `{1=>:a, 2=>:b}`. 

Here is an example implementation:

``` ruby
def print_reverse_keys_and_values(hash)
  result = {}
  hash.each do |key, value|
    result[value] = key
  end
  puts result.inspect
end

example = {a: 1, b: 2}
print_reverse_keys_and_values(example)
```

**Important:** Your student should not use the `Hash#invert()` method. This is an exercise for them to increase their skills in using Hashes and understand their structure.

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

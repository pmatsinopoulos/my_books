### Question #6 - The following task `foo` has as prerequisite the task with name `bar`:
```
task :foo do
  puts 'foo'
end

task bar: :foo do
  puts 'bar'
end
```

*True/False*

1. True
2. False

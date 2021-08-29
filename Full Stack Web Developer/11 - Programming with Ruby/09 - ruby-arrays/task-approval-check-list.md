# Task B. Write a Ruby program that asks the user to give 10 words, one-by-one, and then prints the words sorted in alphabetical order.

An example run of the program is given below:

``` bash
$ ruby task-sort-words.rb
(1/10) - Give me a word: balloon
(2/10) - Give me a word: baseball
(3/10) - Give me a word: contour
(4/10) - Give me a word: thunder
(5/10) - Give me a word: paper
(6/10) - Give me a word: sorting
(7/10) - Give me a word: water
(8/10) - Give me a word: carpet
(9/10) - Give me a word: albatros
(10/10) - Give me a word: gorillas
Thanks! Your sorted words are: ["albatros", "balloon", "baseball", "carpet", "contour", "gorillas", "paper", "sorting", "thunder", "water"]
```

1. Each time we ask the user a word, we make sure that we display an index in front of the question. Hence the user knows which
number they are giving and how many they are left to be given.
2. If the user gives an empty word, then that word should not be counted and they should be asked for the same position word.

Here is a sample implementation:

``` ruby
# File: task-sort-words.rb
words_given = []
while words_given.size < 10
  print "(#{words_given.size + 1}/10) - Give me a word: "
  word_given = gets.chomp
  next if word_given.empty?
  words_given << word_given
end

puts "Thanks! Your sorted words are: #{words_given.sort}"
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

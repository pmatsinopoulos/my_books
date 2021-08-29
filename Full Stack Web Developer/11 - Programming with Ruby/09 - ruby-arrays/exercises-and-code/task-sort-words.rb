# File: task-sort-words.rb
words_given = []
while words_given.size < 10
  print "(#{words_given.size + 1}/10) - Give me a word: "
  word_given = gets.chomp
  next if word_given.empty?
  words_given << word_given
end

puts "Thanks! Your sorted words are: #{words_given.sort}"

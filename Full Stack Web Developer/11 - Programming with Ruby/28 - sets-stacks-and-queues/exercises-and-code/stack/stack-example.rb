# File: stack-example.rb
#
require_relative 'stack'

puts 'Give me a phrase and I will reverse the order of its words: '
phrase = gets.chomp
if phrase.empty?
  $stderr.puts 'You need to give a phrase'
  exit 1
end

puts "Phrase: #{phrase}"

stack = Stack.new

phrase.split(' ').each { |word| stack.push(word) }

new_phrase = ''

while word = stack.pop
  new_phrase = "#{new_phrase} #{word}"
end

puts "New Phrase: #{new_phrase}"

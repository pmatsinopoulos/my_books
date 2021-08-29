# File: blocks-6.rb
#
def double(a, &block)
  yield "Double of #{a} is #{a * 2}"
end

puts 'About to call double for 5: '

double(5) do |message|
  puts '- Start of message: '
  puts message
  puts '... end of message -'
end

puts 'About to call double for 10: '

double(10) do |message|
  puts 'START: ...'
  puts message
  puts '...END'
end


# File: blocks-7.rb
#
def double(a, &block)
  yield "Double of #{a} is #{a * 2}"
end

puts 'About to call double for 5: '

double(5) { |message|
  puts '- Start of message: '
  puts message
  puts '... end of message -'
}

puts 'About to call double for 10: '

double(10) { |message|
  puts 'START: ...'
  puts message
  puts '...END'
}


# File: exception-1.rb
#
def divide(a, b)
  a / b
end

def get_answer(question)
  print "#{question}: "
  gets.chomp
end

while true
  break if (answer = get_answer('Give me the dividend')) == 'stop'

  dividend = answer.to_i

  break if (answer = get_answer('Give me the divisor')) == 'stop'

  divisor = answer.to_i

  puts "Division #{dividend} / #{divisor} = #{divide(dividend, divisor)}"
end

puts "Bye!"

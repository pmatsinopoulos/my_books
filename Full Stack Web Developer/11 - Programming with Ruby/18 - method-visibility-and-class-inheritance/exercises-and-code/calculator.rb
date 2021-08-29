# File: calculator.rb
#
class Calculator
  def initialize(a, b)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end

  def subtract
    @a - @b
  end

  def divide
    @a / @b
  end

  def multiply
    @a * @b
  end
end

print 'Give me the first number: '
a = gets.to_f
print 'Give me the second number: '
b = gets.to_f
print 'Let me know which mathematical operation to carry out (1 for add, 2 for subtract, 3 for divide, 4 for multiply): '
operation = gets.to_i

case operation
  when 1
    operation = :add
  when 2
    operation = :subtract
  when 3
    operation = :divide
  when 4
    operation = :multiply
  else
    puts "ERROR: You didn't give the correct operation"
    exit(1)
end

calculator = Calculator.new(a, b)
result = calculator.public_send operation

puts "Result is: #{result}"

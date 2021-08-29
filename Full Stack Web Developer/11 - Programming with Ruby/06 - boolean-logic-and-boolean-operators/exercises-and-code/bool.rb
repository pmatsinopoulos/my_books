# File bool.rb
#
a = false
b = false
result = a && b # && if for boolean AND
puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.

b = true
result = a && b
puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.

a = true
result = a && b
puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.

# ============= OR operator ======================

a = false
b = false
result = a || b # || is for the OR operator
puts "(#{a} OR #{b}) Result: #{result}" # is going to print false

b = true
result = a || b # || is for the OR operator
puts "(#{a} OR #{b}) Result: #{result}" # is going to print true

# ============= XOR operator =====================

a = false
b = false
result = a ^ b # ^ is for the XOR operator
puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false

a = true
result = a ^ b # ^ is for the XOR operator
puts "(#{a} XOR #{b}) Result: #{result}" # is going to print true

b = true
result = a ^ b # ^ is for the XOR operator
puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false

# ============= NOT operator =====================

a = false
result = !a # ! is for the NOT operator
puts "(NOT #{a}) Result: #{result}" # is going to print true

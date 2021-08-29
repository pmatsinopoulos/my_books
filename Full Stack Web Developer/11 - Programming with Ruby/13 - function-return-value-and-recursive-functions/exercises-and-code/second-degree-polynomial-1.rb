# File: second-degree-polynomial-1.rb
#
# y = f(x) = a * x^2 + b * x + c
#
def f(a, b, c, x)
  result = a * x ** 2 + b * x + c
  return result
end

y = f(5, 3, 2, 2)

puts "y = #{y}"

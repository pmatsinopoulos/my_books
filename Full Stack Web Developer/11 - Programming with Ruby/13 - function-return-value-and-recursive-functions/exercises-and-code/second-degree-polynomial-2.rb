# File: second-degree-polynomial-2.rb
#
# y = f(x) = a * x^2 + b * x + c
#
def f(a, b, c, x)
  return a * x ** 2 + b * x + c
end

y = f(5, 3, 2, 2)

puts "y = #{y}"

# File: matrix-9.rb
#
require 'matrix'

a = Matrix[
  [4, 5],
  [8, 2]
]

b = Matrix[
  [3, 3.5],
  [3.2, 3.6]
]

b_inverse = b.inverse

puts "Matrix a: #{a}"
puts "Matrix b: #{b}"
puts "Matrix a / b: #{a / b}"
puts "Matrix a * b_inverse: #{a * b_inverse}"

# File: matrix-8.rb
#
require 'matrix'

a = Matrix[
  [3, 3.5],
  [3.2, 3.6]
]

a_inverse = a.inverse
i = a * a_inverse

puts "Matrix a: #{a}"
puts "Matrix a_inverse: #{a_inverse}"
puts "a * a_inverse: #{i}"

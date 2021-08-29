# File: matrix-7.rb
#
require 'matrix'

a = Matrix[
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

i = Matrix.identity(3)
puts "Matrix a: #{a}"
puts "Identity Matrix: #{i}"
puts "a * i = #{a * i}"
puts "i * a = #{i * a}"

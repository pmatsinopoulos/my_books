# File: matrix-10.rb
#
require 'matrix'

a = Matrix[
  [4, 5, 10],
  [8, 2, 3]
]

a_transpose = a.transpose

puts "Matrix a: #{a}"
puts "Matrix a_transpose: #{a_transpose}"

# File: matrix-12.rb
#
require 'matrix'

matrix = Matrix[[1, 2], [3, 4], [5, 6]]
puts "Matrix: #{matrix}"

matrix_array = matrix.to_a
puts "Matrix array: #{matrix_array}"

matrix_array[0][1] = 5

matrix = Matrix[*matrix_array]

puts "Matrix: #{matrix}"

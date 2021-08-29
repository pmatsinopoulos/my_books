# File: matrix-6.rb
#
require 'matrix'

a = Matrix[
  [1, 2, 3],
  [4, 5, 6]
]

b = Matrix[
  [ 7,  8],
  [ 9, 10],
  [11, 12]
]

c = a * b

puts c.inspect

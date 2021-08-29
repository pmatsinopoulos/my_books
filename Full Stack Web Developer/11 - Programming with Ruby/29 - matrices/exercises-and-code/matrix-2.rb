# File: matrix-2.rb
#
require 'matrix'

a = Matrix[
  [6,  4, 24],
  [1, -9,  8]
]

b = Matrix[
  [-2, -4, 10],
  [ 3,  9,  3]
]

c = a + b

puts c.inspect

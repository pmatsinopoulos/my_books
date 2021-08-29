require 'matrix'

a = Matrix[
  [6, 4, 24],
  [1, -9, 8]
]
puts a.inspect

puts "a number of columns: #{a.column_count}"
puts "a number of rows: #{a.row_count}"

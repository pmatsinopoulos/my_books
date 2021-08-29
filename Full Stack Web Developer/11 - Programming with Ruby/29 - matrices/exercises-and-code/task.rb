# File: task.rb
#
require 'matrix'

def commands
  print 'Inverse (i), Determinant (d), Exit (x) : '
end

def get_square_matrix_dimension
  print 'Give me the square matrix dimension: '
  gets.chomp.to_i
end

def ask_item(row_id, column_id)
  print "Give item row: #{row_id + 1}, column: #{column_id + 1} : "
  gets.chomp.to_f
end

def ask_matrix
  square_matrix_dimension = get_square_matrix_dimension
  matrix_array = [*square_matrix_dimension.times.to_a.map {Array.new(square_matrix_dimension, 0)}]
  square_matrix_dimension.times do |row_id|
    square_matrix_dimension.times do |column_id|
      matrix_array[row_id][column_id] = ask_item(row_id, column_id)
    end
  end
  Matrix[*matrix_array]
end

def ask_matrix_and_inverse
  matrix = ask_matrix
  puts "Matrix given: #{matrix}"
  puts "Inverse matrix: #{matrix.inverse}"
  puts "Multiplying matrix to its inverse: #{matrix * matrix.inverse}"
end


def ask_matrix_and_determinant
  matrix = ask_matrix
  puts "Matrix given: #{matrix}"
  puts "Matrix determinant: #{matrix.determinant}"
end

while true
  commands
  answer = gets.chomp
  case answer.downcase
    when 'i'
      ask_matrix_and_inverse
    when 'd'
      ask_matrix_and_determinant
    when 'x'
      puts 'Bye!'
      exit
    else
      puts 'Wrong command'
  end
end


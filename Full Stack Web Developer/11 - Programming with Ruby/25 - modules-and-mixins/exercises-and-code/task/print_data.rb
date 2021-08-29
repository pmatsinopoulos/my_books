require_relative 'course'
require_relative 'student'
require_relative 'print_header_view'

courses = []
courses << Course.new('Full-Stack Web Developer', 10)
courses << Course.new('Ruby', 15)
courses << Course.new('SQL', 20)
courses << Course.new('JavaScript', 25)

puts '---- Courses :'
courses.print

students = []
students << Student.new('John', 'Smith')
students << Student.new('George', 'Papas')
students << Student.new('Maria', 'Foo')
students << Student.new('Paul', 'Adam')

puts '---- Students :'
students.print

puts '---- Empty Array :'

empty_array = []
empty_array.print

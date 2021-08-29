$LOAD_PATH << '.'

require 'task_student_model'
require 'task_helpers'

students = ask_user

column_width = 30
column_delimiter = '|'

print_column_headers(column_width, column_delimiter)

print_horizontal_line(column_width, column_delimiter)

print_students_data(students, column_width, column_delimiter)

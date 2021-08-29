# File: student.rb
#
require_relative 'print_view'

Student = Struct.new(:first_name, :last_name) do
  include PrintView
end

Student::COLUMN_WIDTH = 50


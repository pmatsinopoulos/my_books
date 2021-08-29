# File: course.rb
#
require_relative 'print_view'

Course = Struct.new(:name, :number_of_students) do
  include PrintView
end
Course::COLUMN_WIDTH = 30

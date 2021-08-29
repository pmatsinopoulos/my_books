Your student needs to implement a program with the requirements described in the task description. You need to make sure that 
they understand the concepts of the chapter and that they can apply all the principles taught so far in the previous chapters.

You need to ask your student to upload their work on their Github account. You need to review his code with comments online.

Here is an indicative implementation:

``` ruby
# File: course.rb
#
require_relative 'print_view'

Course = Struct.new(:name, :number_of_students) do
  include PrintView
end
Course::COLUMN_WIDTH = 30
```

``` ruby
# File: student.rb
#
require_relative 'print_view'

Student = Struct.new(:first_name, :last_name) do
  include PrintView
end

Student::COLUMN_WIDTH = 50
```

``` ruby
# File: print_view.rb
#
module PrintView
  def self.included(base)
    base.include InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def print
      line_to_print = members.map do |member|
        value = self[member]
        value.is_a?(String) ? value.ljust(self.class.column_width) : value.to_s.rjust(self.class.column_width)
      end.join(' | ')
      puts "#{line_to_print} |"
    end
  end

  module ClassMethods
    def headers
      members
    end

    def column_width
      self::COLUMN_WIDTH
    end
  end
end
```

``` ruby
# File: print_header_view.rb
#
module PrintHeaderView
  def print
    return if size.zero?

    print_headers
    each do |element|
      element.print
    end
    print_header_horizontal_line
  end

  private

  def print_headers
    print_header_horizontal_line

    print_header

    print_header_horizontal_line
  end

  def print_header
    line_to_print = headers.map do |header|
      header.to_s.capitalize.tr('_', ' ').ljust(column_width)
    end.join(' | ')
    puts "#{line_to_print} |"
  end

  def print_header_horizontal_line
    puts "#{'-' * column_width} | " * headers.size
  end

  def column_width
    first.class.column_width
  end

  def headers
    first.class.headers
  end
end

class Array
  include PrintHeaderView
end
```

``` ruby
# File: print_data.rb
#
# This is the main file
#
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
```

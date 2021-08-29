def ask_user
  result = []
  print 'Give number of students: '
  number_of_students = gets.to_i
  number_of_students.times do |i|

    puts "Student #{i + 1}:"
    print '...First Name: '
    first_name = gets.chomp.strip

    print '...Last Name: '
    last_name = gets.chomp.strip

    print '...Courses Enrolled (give a comma separated list): '
    courses_enrolled = gets.chomp.strip
    courses_enrolled = courses_enrolled.split(',').map { |course_enrolled| course_enrolled.strip }

    result << Student.new(first_name, last_name, courses_enrolled)
  end
  result
end

def column_headers
  ['First Name', 'Last Name', 'Courses Enrolled']
end

def print_column_headers(column_width, column_delimiter)
  puts column_headers.
      map {|column_header| "#{column_header.ljust(column_width)}"}.
      join(column_delimiter)
end

def print_horizontal_line(column_width, column_delimiter)
  puts column_headers.size.times.map { '-' * column_width }.join(column_delimiter)
end

def print_students_data(students, column_width, column_delimiter)
  students.each do |student|

    # print First Name and Last Name
    print [student.first_name, student.last_name].
            map {|student_datum| student_datum.ljust(column_width)}.
            join(column_delimiter)

    # print courses, stacked one on top of the other
    student.courses_enrolled.each_with_index do |course_enrolled, index|
      if index > 0
        print 2.times.map { ' ' * column_width }.join(' ')
      end
      puts "| #{course_enrolled.ljust(column_width)}"
    end

    # print horizontal line
    print_horizontal_line(column_width, column_delimiter)
  end
end

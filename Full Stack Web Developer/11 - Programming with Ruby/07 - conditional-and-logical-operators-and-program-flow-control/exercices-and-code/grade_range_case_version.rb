# File: grade_range_case_version.rb
#
print 'What is the grade? (0 - 10) '
grade = gets.to_f
case
  when grade >= 0 && grade <5
    puts 'This is a FAIL'
  when grade >= 5 && grade < 8
    puts 'This is a PASS'
  when grade >= 8 && grade < 9
    puts 'This is a VERY GOOD'
  when grade >=9 && grade <= 10
    puts 'This is an EXCELLENT'
  else
    puts "Grade: #{grade} is not valid. Try one between 0 and 10."
end

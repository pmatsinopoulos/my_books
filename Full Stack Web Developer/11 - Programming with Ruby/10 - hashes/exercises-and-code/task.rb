# File: task.md
#
people = {}
while true
  print 'Give me the name of the person: '
  name_given = gets.chomp
  print 'Give me the age of the person: '
  age_given = gets.to_i
  break if name_given.empty? || age_given == 0

  people[name_given] = age_given
end

people.each do |name, age|
  puts "Name: #{name} is above 50" if age > 50
end

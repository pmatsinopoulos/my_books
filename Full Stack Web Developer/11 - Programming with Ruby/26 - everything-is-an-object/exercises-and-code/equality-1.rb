# File: equality-1.rb
#
class Person
  def initialize(name)
    @name = name
  end
end

john = Person.new('John')
john_ref = john
another_john = Person.new('John')

puts "John object id is: #{john.object_id}"
puts "John ref object id is: #{john_ref.object_id}"
puts "Another John object id is: #{another_john.object_id}"

puts "Is John == to John ref? : #{john == john_ref}"
puts "Is John === to John ref? : #{john === john_ref}"
puts "Is John eql? to John ref? : #{john.eql? john_ref}"
puts "Is John equal? to John ref? : #{john.equal? john_ref}"

puts "Is John == to Another John? : #{john == another_john}"
puts "Is John === to Another John? : #{john === another_john}"
puts "Is John eql? to Another John? : #{john.eql? another_john}"
puts "Is John equal? to Another John? : #{john.equal? another_john}"


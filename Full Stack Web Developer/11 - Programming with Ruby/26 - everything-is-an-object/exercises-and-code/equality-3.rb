# File: equality-3.rb
#
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    @name == other.name
  end

  def ===(other)
    self.==(other) && other.instance_of?(self.class)
  end
end

class FakePerson
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

john = Person.new('John')
another_john = Person.new('John')
fake_john = FakePerson.new('John')

puts "Is John == to Fake John? #{john == fake_john}"

case john
  when fake_john
    puts 'John is equal to Fake John'
  when another_john
    puts 'John is equal to Another John'
  else
    puts 'John is neither Fake nor Another John'
end


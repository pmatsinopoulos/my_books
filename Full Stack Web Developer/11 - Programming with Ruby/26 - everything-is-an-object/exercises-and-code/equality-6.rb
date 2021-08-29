# File: equality-6.rb
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

  alias eql? ==
end

john = Person.new('John')
another_john = Person.new('John')

puts "John is == to Another John? #{john == another_john}"
puts "John is eql? to Another John? #{john.eql? another_john}"

puts "John hash: #{john.hash}"
puts "Another John Hash: #{another_john.hash}"

h = {john => 36}

puts h[john]
puts h[another_john]

# File: equality-9.rb
#
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def ==(other)
    @first_name == other.first_name && @last_name == other.last_name
  end

  def ===(other)
     self.==(other) && other.instance_of?(self.class)
  end

  alias eql? ==

  def hash
    [@first_name, @last_name].hash
  end
end

john = Person.new('John', 'Papas')
another_john = Person.new('John', 'Papas')

puts "John is == to Another John? #{john == another_john}"
puts "John is eql? to Another John? #{john.eql? another_john}"

puts "John hash: #{john.hash}"
puts "Another John Hash: #{another_john.hash}"

h = {john => 36}

puts h[john]
puts h[another_john]

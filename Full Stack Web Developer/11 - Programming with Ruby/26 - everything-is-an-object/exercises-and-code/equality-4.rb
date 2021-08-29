# File: equality-4.rb
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

john = Person.new('John')
another_john = Person.new('John')

h = {john => 36}

puts h[john]
puts h[another_john] # eql? or equal?

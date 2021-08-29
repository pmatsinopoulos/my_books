# File: sorting-2.rb
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

  def hash
    @name.hash
  end
end

john = Person.new('John')
bob = Person.new('Bob')

collection = [john, bob]

puts 'Collection before sorting: '
puts collection.inspect

collection.sort! do |one, another|
  if one.name < another.name
    -1
  elsif one.name > another.name
    1
  else
    0
  end
end

puts 'Collection after sorting: '
puts collection.inspect


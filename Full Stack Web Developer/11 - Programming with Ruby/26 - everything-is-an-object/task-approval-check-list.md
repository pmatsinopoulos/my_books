# Task B

Student has to implement the class `Traveller` as requested.

Here is a sample implementation:

``` ruby
# File: task.rb
#
class Traveller
  attr_reader :first_name, :last_name, :passport_number
  def initialize(first_name, last_name, passport_number)
    @first_name = first_name
    @last_name = last_name
    @passport_number = passport_number
  end

  def ==(other)
    @first_name == other.first_name &&
        @last_name == other.last_name &&
        @passport_number == other.passport_number
  end

  def ===(other)
    self.==(other) && other.instance_of?(Traveller)
  end

  alias eql? ==

  def hash
    [@first_name, @last_name, @passport_number].hash
  end

  def <=>(other)
    result = self.last_name <=> other.last_name
    return result unless result.zero?

    result = self.first_name <=> other.first_name
    return result unless result.zero?

    self.passport_number <=> other.passport_number
  end
end

john = Traveller.new('John', 'Papas', 'A123')
another_john = Traveller.new('John', 'Papas', 'A123')

h = {john => 30}
puts h[john]
puts h[another_john]

bob = Traveller.new('Bob', 'Papas', 'A124')
another_bob = Traveller.new('Bob', 'Papas', 'A125')
collection = [john, bob, another_bob]

puts collection.sort!.inspect
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

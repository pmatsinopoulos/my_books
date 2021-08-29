# File: self-1.rb
#
class Addition
  def initialize(a, b)
    @a = a
    @b = b
    puts "Inside initialize: who_am_i: #{who_am_i}"
  end

  def add
    puts "Inside add: who_am_i: #{who_am_i}"
    @a + @b
  end

  def who_am_i
    self
  end
end

addition = Addition.new(5, 3)
addition.add
puts "addition: #{addition}"

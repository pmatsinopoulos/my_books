# File: customer.rb
#
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  def ==(other_customer)
    @name == other_customer.name
  end
end

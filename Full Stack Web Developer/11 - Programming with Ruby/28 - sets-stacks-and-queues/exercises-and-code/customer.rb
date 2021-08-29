# File: customer.rb
#
require 'forwardable'

class Customer
  attr_reader :name

  extend Forwardable

  def_delegators :@name, :hash

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

  def ==(other)
    @name == other.name
  end

  alias eql? ==

  def <=>(other)
    @name <=> other.name
  end
end

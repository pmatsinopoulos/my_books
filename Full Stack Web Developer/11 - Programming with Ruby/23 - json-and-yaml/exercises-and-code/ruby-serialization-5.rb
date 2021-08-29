# File: ruby-serialization-5.rb
#
require 'json'

class Customer
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def to_json(*options)
    {name: name, email: email}.to_json(options)
  end
end

customers = [Customer.new('John Smith', 'john_smith@mailinator.com'), Customer.new('Peter Pan', 'peter_pan@mailinator.com')]
File.write('customers-db.json', customers.to_json)

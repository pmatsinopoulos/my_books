# File: ruby-serialization-4.rb
#
require 'json'

class Customer
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def to_json
    {name: name, email: email}.to_json
  end
end

customers = [Customer.new('John Smith', 'john_smith@mailinator.com'), Customer.new('Peter Pan', 'peter_pan@mailinator.com')]
File.write('customers-db.json', customers.to_json)

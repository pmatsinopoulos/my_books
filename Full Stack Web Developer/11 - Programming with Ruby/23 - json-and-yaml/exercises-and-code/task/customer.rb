class Customer
  attr_accessor :name, :email

  def to_json(options = {})
    {name: name, email: email}.to_json(options)
  end

  def self.from_h(hash)
    new.tap do |customer|
      customer.name = hash['name']
      customer.email = hash['email']
    end
  end

  def to_s
    "Name: #{name}, email: #{email}"
  end
end

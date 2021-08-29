# File: yaml-to-order.rb
#
require 'Date'
require 'yaml'

class Customer
  attr_accessor :name,
                :address

  def initialize(name, address)
    @name = name
    @address = address
  end
end

class OrderItem
  attr_accessor :id,
                :item,
                :item_type,
                :price,
                :currency

  def initialize(id, item, item_type, price, currency)
    @id = id
    @item = item
    @item_type = item_type
    @price = price
    @currency = currency
  end
end

class Order
  attr_accessor :order_number,
                :order_date,
                :customer,
                :order_details
end

order = YAML.load_file('order.yml')
puts order.inspect

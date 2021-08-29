# File: order-to-yaml.rb
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

order = Order.new
order.order_number = 'ABC123'
order.order_date = Date.new(2016, 3, 23)
order.customer = Customer.new('John Papas', 'Independence Day 5th, 11511')
order.order_details = [
    OrderItem.new(1, 'Of Mice And Men', 'Book', 10, 'Euro'),
    OrderItem.new(2, 'Les Miserables', 'Book', 12, 'Euro'),
    OrderItem.new(3, 'Game Of Thrones', 'DVD', 50, 'Euro'),
    OrderItem.new(4, 'Samsung Galaxy', 'Mobile Phone', 200, 'Euro')
]

order_yaml = order.to_yaml
File.write('order.yml', order_yaml)

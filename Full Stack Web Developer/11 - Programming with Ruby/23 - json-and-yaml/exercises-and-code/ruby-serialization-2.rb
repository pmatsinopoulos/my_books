# File: ruby-serialization-2.rb
#
require 'Date'
require 'json'

class Customer
  attr_accessor :name,
                :address

  def initialize(name, address)
    @name = name
    @address = address
  end

  def to_h
    {name: name,
     address: address}
  end

  def self.from_h(customer_hash)
    new(customer_hash['name'], customer_hash['address'])
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

  def to_h
    {id: id, item: item, item_type: item_type, price: price, currency: currency}
  end

  def self.from_h(order_item_hash)
    new(
      order_item_hash['id'],
      order_item_hash['item'],
      order_item_hash['item_type'],
      order_item_hash['price'],
      order_item_hash['currency']
    )
  end
end

class Order
  attr_accessor :order_number,
                :order_date,
                :customer,
                :order_details
  def to_json(*options)
    {order_number: order_number,
     order_date: order_date,
     customer: customer.to_h,
     order_details: order_details.map(&:to_h) }.to_json(options)
  end

  def self.from_json(order_json)
    order_hash = JSON.parse(order_json)
    order = Order.new
    order.order_number = order_hash['order_number']
    order.order_date = order_hash['order_date']
    order.customer = Customer.from_h(order_hash['customer'])
    order.order_details = order_hash['order_details'].map {|order_item_hash| OrderItem.from_h(order_item_hash)}
    order
  end
end

order_json = File.read('order.json')

order = Order.from_json(order_json)
puts order.inspect


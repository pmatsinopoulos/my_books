class Order
  attr_accessor :order_date, :customer_email, :order_number, :order_items

  def to_json(options = {})
    {order_date: order_date,
     customer_email: customer_email,
     order_number: order_number,
     order_items: order_items.map {|order_item| order_item.to_h }}.to_json(options)
  end

  def self.from_h(hash)
    new.tap do |order|
      order.order_date = hash['order_date']
      order.customer_email = hash['customer_email']
      order.order_number = hash['order_number']
      order.order_items = hash['order_items'].map { |order_item| OrderItem.from_h(order_item) }
    end
  end

  def to_s
    "Order No: #{order_number}, customer: #{customer_email}, date: #{order_date}, order_items: #{order_items.map {|order_item| order_item.to_s}.join(', ')}"
  end
end

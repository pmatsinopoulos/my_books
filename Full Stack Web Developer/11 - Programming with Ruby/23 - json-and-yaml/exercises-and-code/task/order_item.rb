class OrderItem
  attr_accessor :item, :price, :currency

  def to_h
    {item: item, price: price, currency: currency}
  end

  def self.from_h(hash)
    new.tap do |order_item|
      order_item.item = hash['item']
      order_item.price = hash['price']
      order_item.currency = hash['currency']
    end
  end

  def to_s
    "Item: #{item}, Price: #{price}, Currency: #{currency}"
  end
end

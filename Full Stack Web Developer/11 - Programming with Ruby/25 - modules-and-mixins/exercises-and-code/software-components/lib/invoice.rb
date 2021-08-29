# File: software-components/invoice.rb
#
class Order
  attr_accessor :number
end

class Invoice
  def initialize(date, order)
    @date = date
    @order = order
  end

  def generate

  end
end

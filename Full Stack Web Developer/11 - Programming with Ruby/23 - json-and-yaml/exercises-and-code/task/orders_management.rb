class OrdersManagement
  def initialize(orders_db_filename, customers_management, logger)
    @orders = []
    @orders_db_filename = orders_db_filename
    @customers_management = customers_management
    @logger = logger
  end

  def find_order(order_number)
    @orders.find(nil) { |order| order.order_number.downcase == order_number }
  end

  def reload_and_find_order(order_number)
    load_orders_from_db
    @orders.find(nil) { |order| order.order_number.downcase == order_number }
  end

  def create
    print 'About to create a new order...'
    print 'Give me the email of the customer this order is for (or blank to exit): '
    customer_email = gets.chomp
    return if customer_email.empty?

    customer_found = customers_management.reload_and_find_customer(customer_email)
    unless customer_found
      puts 'Customer does not exist'
      return
    end

    print 'Give me the order number (or blank to exit): '
    order_number = gets.chomp
    return if order_number.empty?

    if reload_and_find_order(order_number)
      puts 'Order already exists'
      return
    end

    order = Order.new
    order.order_number = order_number
    order.customer_email = customer_email
    order.order_date = Date.today

    print 'Give me the number of order items (or blank to exit): '
    number_of_order_items = gets.chomp.to_i
    return if number_of_order_items.zero?

    order.order_items = []
    number_of_order_items.times do |i|
      puts "Order item (#{i + 1}): "
      print '...Give me the the item (or blank to exit): '
      item = gets.chomp
      return if item.empty?

      print '...Give me the price (or blank to exit): '
      price = gets.chomp.to_f
      return if price.zero?

      print '...Give me the currency (or blank to exit): '
      currency = gets.chomp
      return if currency.empty?

      order_item = OrderItem.new.tap do |order_item|
        order_item.item = item
        order_item.price = price
        order_item.currency = currency
      end
      order.order_items << order_item
    end

    load_orders_from_db
    append_to_db(order)
  end

  def delete
    print 'About to delete an order...'
    print 'Give me the number of the order to delete (or blank to exit): '
    order_number = gets.chomp.downcase
    return if order_number.empty?
    load_orders_from_db
    @orders.delete_if { |order| order.order_number.downcase == order_number }
    save_orders_to_db
    logger.info "DELETE: deleted order with number #{order_number}"
  end

  def retrieve
    print 'Retrieving an order...'
    print 'Give me the number of the order you are looking for (or blank to exit): '
    order_number = gets.chomp.downcase
    return if order_number.empty?

    order_found = reload_and_find_order(order_number)
    if order_found
      puts order_found
    else
      puts 'Order not found!'
    end
  end

  def update
    print 'Updating an order...'
    print 'Give me the number of the order you want to update (or blank to exit): '
    order_number = gets.chomp.downcase
    return if order_number.empty?

    original_order_number = order_number

    order_found = reload_and_find_order(order_number)
    if order_found
      puts "About to update this order: #{order_found}"
      print 'Give me the email of the customer this order is for (or blank to leave unchanged): '
      customer_email = gets.chomp
      unless customer_email.empty?
        customer_found = customers_management.reload_and_find_customer(customer_email)
        unless customer_found
          puts 'Customer does not exist'
          return
        end
        order_found.customer_email = customer_email
      end

      print 'Give me the order number (or blank to leave unchanged): '
      order_number = gets.chomp
      if order_number != order_found.order_number && find_order(order_number)
        puts 'This order number is already taken'
        return
      end
      order_found.order_number = order_number unless order_number.empty?

      print 'Give me the order date (YYYY-MM-DD) (or blank to leave unchanged): '
      order_date = gets.chomp
      order_found.order_date = Date.parse(order_date) unless order_date.empty?

      print 'Give me the number of order items (or blank to leave unchanged): '
      number_of_order_items = gets.chomp.to_i

      unless number_of_order_items.zero?
        order_found.order_items = []
        number_of_order_items.times do |i|
          puts "Order item (#{i + 1}): "
          print '...Give me the the item (or blank to exit): '
          item = gets.chomp
          return if item.empty?

          print '...Give me the price (or blank to exit): '
          price = gets.chomp.to_f
          return if price.zero?

          print '...Give me the currency (or blank to exit): '
          currency = gets.chomp
          return if currency.empty?

          order_item = OrderItem.new.tap do |order_item|
            order_item.item = item
            order_item.price = price
            order_item.currency = currency
          end
          order_found.order_items << order_item
        end
      end

      save_orders_to_db
      logger.info "UPDATE: updated order with number #{original_order_number}. Order now being: #{order_found}"
    else
      puts 'Order not found!'
    end
  end

  def list
    puts 'Printing all Orders: '
    load_orders_from_db
    @orders.each { |order| puts order}
  end

  private

  attr_accessor :orders_db_filename, :customers_management, :logger

  def load_orders_from_db
    return unless File.exist?(orders_db_filename)
    @orders = JSON.parse(File.read(orders_db_filename)).map {|order_hash| Order.from_h(order_hash)}
  end

  def append_to_db(order)
    @orders << order
    save_orders_to_db
    logger.info "CREATE: created order #{order}"
  end

  def save_orders_to_db
    File.write(orders_db_filename, @orders.to_json)
  end
end

Your student needs to implement a Ruby application that satisfies the requirements of the task. Here is an example implementation:

``` ruby
# This is the main application script.
# File: crm-application.rb
#
require 'json'
require 'yaml'
require 'io/console'

$LOAD_PATH << '.'
require 'customer'
require 'order_item'
require 'order'
require 'application'

# Program starts as: ruby crm-application.rb
#
# and User has to give 1st username and 2nd password.
# If user gives the correct username and password (according to the configuration credentials
# stored in order-management.yml) then he is presented with the actions:
# [u] to choose which database to update, i.e. customers or orders.
#    - he is presented with [c] for customers or [o] for orders or [b] to go back.
# If [c] or [o] selected, then the options are:
#   - [c] for create
#   - [r] for retrieve
#   - [u] for update
#   - [d] for delete
#   - [l] for listing all the entries of the database
#   - [b] to choose another database to work with
# If [c] is selected, then according to the database he is presented with questions to answer in order to create a
# new entry.
# If [r] is selected, then user needs to give a keyword to search with.
# if [u] is selected, then user needs to enter the details (if blank on a field, field is not updated)
# if [d] is selected, then user needs to give the id of the entry to delete.

Signal.trap('SIGINT') do
  $stdout.puts 'Bye!'
  exit 0
end

application = Application.new

application.authenticate
application.run
```

``` ruby
# File: application.rb
#
# This is the file that defines the +Application+ class.
#
require 'customers_management'
require 'orders_management'
require 'logger'

class Application
  def authenticate
    username_given, password_given = ask_credentials
    validate_credentials(username_given, password_given)
    @state = 'ask-database'
  end

  def run
    while true
      if ask_database?
        use_database
      elsif ask_crud?
        self.crud_action = ask_crud_action
        if ['c', 'r', 'u', 'd', 'l', 'b'].include?(crud_action)
          actions[crud_action].()
        else
          $stderr.puts 'Wrong Action'
        end
      end
    end
  end

  private

  attr_accessor :database, :state, :crud_action

  def actions
    {'c' => -> { db.create    },
     'd' => -> { db.delete    },
     'r' => -> { db.retrieve  },
     'u' => -> { db.update    },
     'l' => -> { db.list      },
     'b' => -> { use_database }}
  end

  def database
    @database == 'c' ? 'Customers' : 'Orders'
  end

  def ask_database?
    state == 'ask-database'
  end

  def ask_crud?
    state == 'ask-crud'
  end

  def ask_crud_action
    print "(#{database}): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: "
    gets.chomp.downcase
  end

  def use_database
    print 'Choose database: [c] for customers, [o] for orders: '
    answer = gets.chomp.downcase
    if ['c', 'o'].include?(answer)
      self.database = answer
      self.state = 'ask-crud'
    else
      puts 'Wrong database chosen'
    end
  end

  def username
    config_username
  end

  def password
    config_password
  end

  def config_credentials
    config['credentials']
  end

  def config_username
    config_credentials['username']
  end

  def config_password
    config_credentials['password']
  end

  def config_database
    config['database']
  end

  def config_logger_filename
    config['log']
  end

  def config
    @config ||= YAML.load_file('crm-application.yml')
  end

  def ask_credentials
    print 'Username: '
    username = gets.chomp
    print 'Password: '
    password = $stdin.noecho(&:gets).chomp rescue gets.chomp
    puts
    [username, password]
  end

  def validate_credentials(username_given, password_given)
    if username_given.nil? || password_given.nil? || username_given.downcase != username || password_given != password
      $stderr.puts 'Wrong username or password!'
      exit 1
    end
  end

  def db
    customers_db? ? customers_management : (orders_db? ? orders_management : raise(StandardError, 'Wrong Database'))
  end

  def customers_db?
    database.downcase == 'customers'
  end

  def orders_db?
    database.downcase == 'orders'
  end

  def customers_management
    @customers_management ||= CustomersManagement.new(customers_db_filename, logger)
  end

  def orders_management
    @orders_management ||= OrdersManagement.new(orders_db_filename, customers_management, logger)
  end

  def customers_db_filename
    config_database['customers']
  end

  def orders_db_filename
    config_database['orders']
  end

  def logger
    @logger ||= Logger.new(config_logger_filename)
  end
end
```

``` ruby
# File: customer.rb
# 
# This defines the +Customer+ model
#
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
```

``` ruby
# File: order.rb
#
# This defines the +Order+ model
#
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
```

``` ruby
# File: order_item.rb
#
# This defines the +OrderItem+ model
#
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
```

``` ruby
# File: customers_management.rb
#
# This defines the class that deals with CRUD actions on Customers database
#
class CustomersManagement
  def initialize(customers_db_filename, logger)
    @customers = []
    @customers_db_filename = customers_db_filename
    @logger = logger
  end

  def reload_and_find_customer(customer_email)
    load_customers_from_db
    @customers.find(nil) { |customer| customer.email.downcase == customer_email}
  end

  def find_customer(customer_email)
    @customers.find(nil) { |customer| customer.email.downcase == customer_email}
  end

  def create
    print 'About to create a new customer...'
    print 'Give me the name of the customer (or blank to exit): '
    name = gets.chomp
    return if name.empty?

    print 'Give me the email of the customer (or blank if exit): '
    email = gets.chomp
    return if email.empty?

    if reload_and_find_customer(email)
      puts 'Customer already exists'
      return
    end

    customer = Customer.new.tap do |customer|
      customer.name = name
      customer.email = email
    end

    load_customers_from_db
    append_to_db(customer)
  end

  def delete
    print 'About to delete a customer...'
    print 'Give me the email of the customer to delete (or blank to exit): '
    email = gets.chomp.downcase
    return if email.empty?
    load_customers_from_db
    @customers.delete_if {|customer| customer.email.downcase == email}
    save_customers_to_db
    logger.info "DELETE: deleted customer with email #{email}"
  end

  def retrieve
    print 'Retrieving a customer...'
    print 'Give me the email of the customer you are looking for (or blank to exit): '
    email = gets.chomp.downcase
    return if email.empty?

    customer_found = reload_and_find_customer(email)
    if customer_found
      puts customer_found
    else
      puts 'Customer not found!'
    end
  end

  def update
    print 'Updating a customer...'
    print 'Give me the email of the customer you want to update (or blank to exit): '
    email = gets.chomp.downcase
    return if email.empty?
    original_email = email

    customer_found = reload_and_find_customer(email)
    if customer_found
      puts "About to update this customer: #{customer_found}"
      print '...Give me the name of the customer (or blank to leave unchanged): '
      name = gets.chomp

      print 'Give me the email of the customer (or blank to leave unchanged): '
      email = gets.chomp
      if !email.empty? && email.downcase != customer_found.email && find_customer(email)
        puts 'Customer already exists'
        return
      end

      customer_found.name = name unless name.empty?
      customer_found.email = email unless email.empty?

      unless name.empty? && email.empty?
        save_customers_to_db
        logger.info "UPDATE: updated customer with email #{original_email}. Customer now being: #{customer_found}"
      end
    else
      puts 'Customer not found!'
    end
  end

  def list
    puts 'Printing all Customers: '
    load_customers_from_db
    @customers.each { |customer| puts customer}
  end

  private

  attr_accessor :customers_db_filename, :logger

  def load_customers_from_db
    return unless File.exist?(customers_db_filename)
    @customers = JSON.parse(File.read(customers_db_filename)).map {|customer_hash| Customer.from_h(customer_hash)}
  end

  def append_to_db(customer)
    @customers << customer
    save_customers_to_db
    logger.info "CREATE: Created customer #{customer}"
  end

  def save_customers_to_db
    File.write(customers_db_filename, @customers.to_json)
  end
end
```

``` ruby
# File: orders_management.rb
#
# This defines the class that deals with CRUD actions on Orders database
#
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
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.






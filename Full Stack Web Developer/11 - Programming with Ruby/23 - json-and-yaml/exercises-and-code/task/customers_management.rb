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

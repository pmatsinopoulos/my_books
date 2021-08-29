class User
  def initialize(user_id, password)
    @user_id = user_id
    @password = password
    @login_status = 'logged out'
  end

  def verify_login
  end

  attr_reader :user_id
end

class Customer < User
  attr_reader :customer_name, :address, :email

  def initialize(customer_name, address, email)
    @customer_name = customer_name
    @address = address
    @email = email
    @credit_card_info = ''
    @shipping_info = ''
  end

  def bill
  end

  def register
  end

  def login
  end

  def update_profile
  end

  private

  def calculate_next_bill_amount
  end

  def generate_invoice_pdf_version
  end
end

class Admin < User
  def initialize(admin_name, email)
    @admin_name = admin_name
    @email = email
  end

  def update_catalog
  end

  attr_reader :email
end

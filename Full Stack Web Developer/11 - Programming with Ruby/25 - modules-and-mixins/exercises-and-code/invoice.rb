# File: invoice.rb
#
module MyAwesomeCompany
  class Invoice
    attr_accessor :customer

    def initialize(customer)
      @customer = customer
    end

    def generate
      puts "Will generate last month invoice for customer #{customer.name}"
    end
  end
end

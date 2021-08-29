# File: invoice_management-1.rb
#
require_relative 'customer'
require_relative 'invoice'

customer = Customer.new
customer.name = 'John Smith'

invoice = Invoice.new(customer)
invoice.generate

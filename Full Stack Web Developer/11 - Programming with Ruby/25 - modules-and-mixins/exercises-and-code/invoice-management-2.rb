# File: invoice_management-2.rb
#
require_relative 'customer'
require_relative 'invoice'
require_relative 'software-components/utils'

customer = Customer.new
customer.name = 'John Smith'

invoice = Invoice.new(customer)
invoice.generate

queue = Queue.new
queue.push(invoice)


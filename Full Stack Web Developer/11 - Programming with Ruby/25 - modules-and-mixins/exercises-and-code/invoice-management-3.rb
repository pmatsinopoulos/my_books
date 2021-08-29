# File: invoice_management-3.rb
#
require_relative 'customer'
require_relative 'invoice'
require_relative 'software-components/utils'

customer = MyAwesomeCompany::Customer.new
customer.name = 'John Smith'

invoice = MyAwesomeCompany::Invoice.new(customer)
invoice.generate

queue = Queue.new
queue.push(invoice)


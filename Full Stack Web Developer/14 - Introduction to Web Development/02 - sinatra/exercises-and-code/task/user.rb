# File: user.rb
#
class User
  def initialize(account)
    @account_number = account['number']
    @balance = account['balance']
    @first_name = account['first_name']
    @last_name = account['last_name']
  end

  attr_reader :account_number, :balance, :first_name, :last_name
end

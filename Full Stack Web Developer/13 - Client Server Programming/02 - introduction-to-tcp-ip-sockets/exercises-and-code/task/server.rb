# File: task/server.rb
#
require 'socket'
require 'json'
require 'securerandom'

DB_FILE = 'accounts.json'

accounts = JSON.parse(File.read('accounts.json'))
accounts.each { |account| account['sessions'] = []}

def save_accounts(accounts)
  File.write(DB_FILE, accounts.map {|account| account.reject {|k, _| k == 'sessions'}}.to_json)
end

def find_account_by_number(accounts, account_number, pin)
  accounts.select {|account| account['number'] == account_number && account['pin'] == pin }.first
end

def find_account_by_authentication_token(accounts, authentication_token)
  accounts.select {|account| account['sessions'].any? {|session| session[:authentication_token] == authentication_token}}.first
end

def authenticate(accounts, account_number, pin)
  account_found = find_account_by_number(accounts, account_number, pin)
  authentication_token = nil
  if account_found
    account_found['sessions'] ||= []
    authentication_token = SecureRandom.hex
    account_found['sessions'] << {authentication_token: authentication_token}
  end
  {authentication_token: authentication_token}
end

def balance(authentication_token, accounts)
  account_found = find_account_by_authentication_token(accounts, authentication_token)
  if account_found
    balance = account_found['balance']
    {balance: balance}
  else
    {balance: nil}
  end
end

def update_balance(authentication_token, accounts, amount)
  account_found = find_account_by_authentication_token(accounts, authentication_token)
  if account_found
    balance = account_found['balance']
    balance += amount
    unless balance < 0
      account_found['balance'] = balance
      save_accounts(accounts)
    end
    {balance: balance}
  else
    {balance: nil}
  end
end

def deposit(authentication_token, amount, accounts)
  update_balance(authentication_token, accounts, amount)
end

def withdraw(authentication_token, amount, accounts)
  update_balance(authentication_token, accounts, -amount)
end

def respond_and_close(connection, answer)
  connection.write answer.to_json
  connection.close
end

Socket.tcp_server_loop(8080) do |connection|
  request = connection.read
  request = JSON.parse(request)
  connection.close_read

  response = {}

  if request['action'] == 'authenticate'

    response = authenticate(accounts, request['account_number'], request['pin'])

  elsif request['action'] == 'balance'

    response = balance(request['authentication_token'], accounts)

  elsif request['action'] == 'deposit'

    response = deposit(request['authentication_token'], request['amount'], accounts)

  elsif request['action'] == 'withdraw'

    response = withdraw(request['authentication_token'], request['amount'], accounts)

  end

  respond_and_close connection, response
end

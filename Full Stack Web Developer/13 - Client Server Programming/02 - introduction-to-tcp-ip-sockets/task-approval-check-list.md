Your student needs to implement the TCP client server task as required. Here is a sample implementation:

(1) The Server Side

``` ruby
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
```

(2) Server database. 

Note that the server is reading and saving the accounts into a JSON file:

``` json
[{"number":"1","pin":"123","balance":90},{"number":"2","pin":"456","balance":100},{"number":"3","pin":"789","balance":150},{"number":"4","pin":"012","balance":300}]
```

(3) The Client Side

``` ruby
# File: task/client.rb
#
require 'socket'
require 'json'
require 'io/console'

def talk(request, response_key)
  begin
    Socket.tcp('127.0.0.1', 8080) do |connection|
      response = dialogue(connection, request)
      response[response_key]
    end
  rescue Errno::ECONNREFUSED
    $stderr.puts 'Cannot connect to server. Is the server running?'
    exit(1)
  end
end

def dialogue(connection, request)
  connection.write request.to_json
  connection.close_write
  response = connection.read
  connection.close
  JSON.parse(response)
end

def authenticate(account_number, pin)
  request = {action: 'authenticate', account_number: account_number, pin: pin}
  talk(request, 'authentication_token')
end

def balance(authentication_token)
  request = {action: 'balance', authentication_token: authentication_token}
  talk(request, 'balance')
end

def update_balance(action, authentication_token, amount)
  request = {action: action, authentication_token: authentication_token, amount: amount}
  talk(request, 'balance')
end

def deposit(authentication_token, amount)
  update_balance('deposit', authentication_token, amount)
end

def withdraw(authentication_token, amount)
  update_balance('withdraw', authentication_token, amount)
end

# ask user account and pin
print 'Give me your account number: '
account_number = gets.chomp

exit(1) if account_number.empty?

print 'Give me your pin: '
pin = gets.chomp

if authentication_token = authenticate(account_number, pin)
  puts 'Authenticated'
else
  $stderr.puts 'Wrong credentials!'
  exit(1)
end

puts "Your balance is: #{balance(authentication_token)}"

while true
  print 'Action? (d)eposit or (w)ithdraw or (b)alance or (q)uit: '
  action = $stdin.getch

  puts

  if action == 'd' || action == 'w'
    print 'Amount (in cents)? '
    amount = gets.chomp.to_i

    new_balance = deposit(authentication_token, amount) if action == 'd'
    new_balance = withdraw(authentication_token, amount) if action == 'w'

    puts "New balance is: #{new_balance}"
  elsif action == 'b'

    puts "Your balance is: #{balance(authentication_token)}"

  elsif action == 'q'
    puts 'Bye!'
    exit
  end
end
```

Make sure that your student uploads their work on their Github account.

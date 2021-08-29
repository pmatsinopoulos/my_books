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

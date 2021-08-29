# File: task/client.rb
#
require 'socket'
require 'json'
require 'io/console'
require 'securerandom'
require_relative './headers_parser'
require_relative './body_decoder'


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

def parse_http_response(response)
  lines = response.split("\n").map {|line| line.strip}
  index = 0
  http_version, status_code, *status_explanation = lines[index].split(' ')
  if status_code == '200'
    index += 1
    headers, index = HeadersParser.new(lines, index).parse

    index += 1
    decoded_body, error = BodyDecoder.new(headers, lines[index]).decode
    if error
      {'bad_request' => error}
    else
      decoded_body
    end
  else
    {'bad_request' => status_explanation.join(' ')}
  end
end

def dialogue(connection, request)
  connection.write request
  connection.close_write
  response = connection.read
  connection.close
  parse_http_response(response)
end

def build_request_string(verb, url, request_body)
  <<-REQUEST
  #{verb} #{url} HTTP/1.1
  Content-Type: application/json; charset=UTF-8
  Content-Length: #{request_body.length}

  #{request_body}
  REQUEST
end

def authenticate(account_number, pin)
  request_body = {account_number: account_number, pin: pin}.to_json
  request = build_request_string('POST', '/authenticate', request_body)
  talk(request, 'authentication_token')
end

def balance(authentication_token)
  request_body = {authentication_token: authentication_token}.to_json
  request = build_request_string('GET', '/balance', request_body)
  talk(request, 'balance')
end

def update_balance(action, authentication_token, amount)
  request_body = {authentication_token: authentication_token, amount: amount}.to_json
  request = build_request_string('POST', "/#{action}", request_body)
  talk(request, 'balance')
end

def deposit(authentication_token, amount)
  update_balance('deposit', authentication_token, amount)
end

def withdraw(authentication_token, amount)
  update_balance('withdraw', authentication_token, amount)
end

def bad_request(authentication_token)
  request_body = {authentication_token: authentication_token}.to_json
  request = build_request_string('DELETE', "/unknown_url", request_body)
  talk(request, 'bad_request')
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
  print 'Action? (d)eposit or (w)ithdraw or (b)alance or (e)rroneous or (q)uit: '
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

  elsif action == 'e'

    puts 'sending bad request'

    puts "Response From Server: #{bad_request(authentication_token)}"

  elsif action == 'q'
    puts 'Bye!'
    exit
  end
end

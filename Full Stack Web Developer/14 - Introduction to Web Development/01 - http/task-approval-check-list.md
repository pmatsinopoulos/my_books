Make sure that your student implements the exercise as requested. Here is a sample/indicative implementation:

```
# File: body_decoder
#
# This class is used both at server and client side to check the headers of the request/response
#
class BodyDecoder
  def initialize(headers, body_content)
    @headers = headers
    @body_content = body_content
  end

  def decode
    if headers['Content-Type'] == 'application/json; charset=UTF-8'
      if headers['Content-Length'].to_i == body_content.length

        [JSON.parse(body_content), nil]

      else
        [{}, 'wrong content length']
      end
    else
      [{}, 'wrong content type']
    end
  end

  private

  attr_accessor :headers, :body_content
end
```

```
# File: headers_parser.rb
#
# This class is used by at client and server side. It is used to parse the headers.
#
class HeadersParser

  def initialize(lines, current_line_index)
    @lines = lines.dup
    @current_line_index = current_line_index
  end

  def parse
    result = {}
    header_line = lines[current_line_index]

    until header_line.empty? do
      header_key, header_value = header_line.split(':').map { |i| i.strip }
      result[header_key] = header_value
      self.current_line_index = current_line_index + 1
      header_line = lines[current_line_index]
    end

    [result, current_line_index]
  end

  private

  attr_accessor :lines, :current_line_index
end
```

```
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
```

```
# File: task/server.rb
#
require 'socket'
require 'json'
require 'securerandom'
require_relative './headers_parser'
require_relative './body_decoder'

DB_FILE = 'accounts.json'

accounts = JSON.parse(File.read('accounts.json'))
accounts.each { |account| account['sessions'] = [] }

def save_accounts(accounts)
  File.write(DB_FILE, accounts.map { |account| account.reject { |k, _| k == 'sessions' } }.to_json)
end

def find_account_by_number(accounts, account_number, pin)
  accounts.select { |account| account['number'] == account_number && account['pin'] == pin }.first
end

def find_account_by_authentication_token(accounts, authentication_token)
  accounts.select { |account| account['sessions'].any? { |session| session[:authentication_token] == authentication_token } }.first
end

def authenticate(accounts, account_number, pin)
  account_found = find_account_by_number(accounts, account_number, pin)
  authentication_token = nil
  if account_found
    account_found['sessions'] ||= []
    authentication_token = SecureRandom.hex
    account_found['sessions'] << {authentication_token: authentication_token}
    {'result' => '200', authentication_token: authentication_token}
  else
    {'result' => '401', authentication_token: nil}
  end
end

def balance(authentication_token, accounts)
  account_found = find_account_by_authentication_token(accounts, authentication_token)
  if account_found
    balance = account_found['balance']
    {'result' => '200', balance: balance}
  else
    {'result' => '401', balance: nil}
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
    {'result' => '200', balance: balance}
  else
    {'result' => '401', balance: nil}
  end
end

def deposit(authentication_token, amount, accounts)
  update_balance(authentication_token, accounts, amount)
end

def withdraw(authentication_token, amount, accounts)
  update_balance(authentication_token, accounts, -amount)
end

def respond_and_close(connection, answer)
  result = answer.dup.delete('result')
  if result == '200'
    response_body = answer.to_json
    http_response =<<-RESPONSE
    HTTP/1.1 #{result} OK
    Content-Type: application/json; charset=UTF-8
    Content-Length: #{response_body.length}

    #{response_body}
    RESPONSE
  else
    result_description = 'Bad Request'
    result_description = 'Unauthorized' if result == '401'
    http_response =<<-RESPONSE
    HTTP/1.1 #{result} #{result_description}

    RESPONSE
  end
  connection.write http_response
  connection.close
end

def read_headers(lines, current_line_index)
  headers_parser = HeadersParser.new(lines, current_line_index)
  headers_parser.parse
end

# 1. POST /authenticate
#    headers
#
#    {account_number: 1, pin: 123}
#
# 2. GET /balance
#    headers
#
#    {authentication_token: }
#
# 3. POST /deposit
#    headers
#
#    {authentication_token: xxxx, amount: xxxx}
#
# 4. POST /withdraw
#    headers
#
#    {authentication_token: xxxx, amount: xxxx}
#
def parse_request(request)
  index = 0
  lines = request.split("\n").map { |line| line.strip }
  verb, url, _ = lines[index].split(' ') # read the Request Line information, which is the first line
  if %w(POST GET).include?(verb) && %w(/authenticate /balance /withdraw /deposit).include?(url)
    index += 1
    headers, index = read_headers(lines, index)

    index += 1
    response_body, error = BodyDecoder.new(headers, lines[index]).decode

    if error
      [{}, 'bad request']
    else
      [response_body.merge({'action' => url[1..-1]}), nil]
    end
  else
    [{}, 'wrong combination of Verb and URL']
  end
end

Socket.tcp_server_loop(8080) do |connection|
  # I need to read the HTTP request
  request = connection.read
  request, error = parse_request(request)
  connection.close_read

  response = {}

  if error
    response = {'result' => '400'}
  else
    if request['action'] == 'authenticate'

      response = authenticate(accounts, request['account_number'], request['pin'])

    elsif request['action'] == 'balance'

      response = balance(request['authentication_token'], accounts)

    elsif request['action'] == 'deposit'

      response = deposit(request['authentication_token'], request['amount'], accounts)

    elsif request['action'] == 'withdraw'

      response = withdraw(request['authentication_token'], request['amount'], accounts)

    end
  end

  respond_and_close connection, response
end
```


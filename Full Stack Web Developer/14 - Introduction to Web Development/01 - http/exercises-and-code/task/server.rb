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

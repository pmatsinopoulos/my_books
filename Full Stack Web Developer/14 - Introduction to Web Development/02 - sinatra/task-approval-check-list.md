Your student needs to create the ATM application as per the requirements. Also, they need to upload their 
code into their Github account and deploy their application to Heroku.

Here is a sample implementation:

(1) The CSS file:

``` css
/* File: task/public/assets/stylesheets/main.css */

body {
    margin-top: 70px;
}

#log-out-button-container {
    margin-top: 30px;
}
```

(2) The views files including the layout:


``` html
<!-- File: views/dashboard.erb -->

<div class="row">
  <div class="col-xs-6 text-right">
    <a href="/withdraw">Withdraw</a>
  </div>

  <div class="col-xs-6">
    <a href="/deposit">Deposit</a>
  </div>
</div>

<div id="log-out-button-container" class="text-center">
  <a href="/sign_out" class="btn btn-default">Log Out</a>
</div>
```

``` html
<!-- File: views/deposit.rb -->

<form action="/deposit" method="post">
  <div class="form-group">
    <label for="amount">Amount</label>
    <input type="number" id="amount" name="amount" placeholder="give amount to deposit" class="form-control" autofocus="autofocus"/>
  </div>

  <button type="submit" class="btn btn-success">Deposit</button>
</form>

or <a href="/dashboard">Got to Dashboard</a>
```

``` html
<!-- File: views/layout.erb -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><%= @page %></title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- Latest jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <div class="container">

    <% if user_signed_in? %>
      <div id="user" class="text-right">
        <%= "#{user.first_name} #{user.last_name}" %>
      </div>

      <div id="current-balance" class="lead text-center">
        Your current balance is: <%= user.balance %>
      </div>
    <% end %>

    <% if @error_message %>
        <div class="alert alert-danger">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <%= @error_message %>
        </div>
    <% end %>

    <%= yield %>

  </div><!-- /.container -->

  </body>
</html>
```

``` html
<!-- File: views/sign_in.erb -->

<form action="/" method="post">
  <div class="form-group">
    <label for="account-number">Account Number:</label>
    <input type="text" id="account-number" name="account_number" class="form-control" placeholder="Type in your account number"/>
  </div>

  <div class="form-group">
    <label for="pin">PIN:</label>
    <input type="password" id="pin" name="pin" class="form-control" placeholder="Type in your PIN"/>
  </div>

  <button type="submit" class="btn btn-success">Sign In</button>
</form>
```

``` html
<!-- File: views/withdraw.erb -->

<form action="/withdraw" method="post">
  <div class="form-group">
    <label for="amount">Amount</label>
    <input type="number" id="amount" name="amount" placeholder="give amount to withdraw" class="form-control" autofocus="autofocus"/>
  </div>

  <button type="submit" class="btn btn-success">Withdraw</button>
</form>

or <a href="/dashboard">Got to Dashboard</a>
```

(3) A sample accounts JSON file that can be used as a starting point for the database

``` json
[{"number":"1","pin":"123","balance":140,"first_name":"John","last_name":"Doe"},{"number":"2","pin":"456","balance":149,"first_name":"Mary","last_name":"Foo"},{"number":"3","pin":"789","balance":150,"first_name":"Paul","last_name":"Scotch"},{"number":"4","pin":"012","balance":300,"first_name":"Kate","last_name":"Bar"}]
```

(4) The `config.ru`

``` ruby
# File: config.ru
#
require_relative './main'

run Sinatra::Application
```

(5) The `Gemfile`

``` ruby
# File: Gemfile
#
source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib'
```

(6) The `main.rb` file

``` ruby
# File: main.rb
#
require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'
require_relative 'user'
require_relative 'negative_balance_error'

enable :sessions

DB_FILE = 'accounts.json'

accounts = JSON.parse(File.read('accounts.json'))

helpers do
  def user_signed_in?
    !session[:account].nil?
  end
end

def find_account_by_number(accounts, account_number, pin)
  accounts.select {|account| account['number'] == account_number && account['pin'] == pin }.first
end

def save_accounts(accounts)
  File.write(DB_FILE, accounts.to_json)
end

def user
  User.new(session[:account])
end

def update_balance(new_balance, accounts)
  raise NegativeBalanceError, "Balance to set is negative: #{new_balance}" if new_balance < 0
  account = accounts.select {|a| a['number'] == user.account_number}.first
  account['balance'] = new_balance
  session[:account] = account
  save_accounts(accounts)
end

get '/dashboard' do
  if user_signed_in?
    erb :dashboard
  else
    redirect '/'
  end
end

get '/sign_out' do
  session.clear
  @error_message = nil
  redirect '/'
end

get '/withdraw' do
  if user_signed_in?
    erb :withdraw
  else
    redirect '/'
  end
end

get '/deposit' do
  if user_signed_in?
    erb :deposit
  else
    redirect '/'
  end
end

post '/withdraw' do
  if user_signed_in?
    amount = params[:amount].to_i
    current_balance = user.balance
    current_balance -= amount
    begin
      update_balance(current_balance, accounts)
      redirect '/dashboard'
    rescue
      @error_message = 'Something went wrong and we didn\'t update you balance'
      erb :withdraw
    end
  else
    redirect '/'
  end
end

post '/deposit' do
  if user_signed_in?
    amount = params[:amount].to_i
    current_balance = user.balance
    current_balance += amount
    begin
      update_balance(current_balance, accounts)
      redirect '/dashboard'
    rescue
      @error_message = 'Something went wrong and we didn\'t update you balance'
      erb :deposit
    end
  else
    redirect '/'
  end
end

get '/' do
  if user_signed_in?
    redirect '/dashboard'
  else
    @error_message = nil
    erb :sign_in
  end
end

post '/' do
  if user_signed_in?
    redirect '/dashboard'
  else
    account_number = params[:account_number]
    pin = params[:pin]
    account_found = find_account_by_number(accounts, account_number, pin)
    if account_found
      session[:account] = account_found
      redirect '/dashboard'
    else
      @error_message = 'Wrong Credentials!'
      erb :sign_in
    end
  end
end
```

(7) Two helper class files here:

``` ruby
# File: negative_balance_error
#
class NegativeBalanceError < StandardError
end
```

``` ruby
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
```

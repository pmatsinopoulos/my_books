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


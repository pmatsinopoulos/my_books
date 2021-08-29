# File: config/routes.rb
#
Rails.application.routes.draw do
  resources :articles do
    collection do
      get :foo
      get :bar
    end
  end

  get '/sign_up', to: 'sign_up#new'
  post '/sign_up', to: 'sign_up#create'
  get '/confirm_email_address', to: 'sign_up#confirm_email_address' # ?email=<email>&email_confirmation_token=<email_confirmation_token>
  post '/confirm_email_address_resend', to: 'sign_up#confirm_email_address_resend'

  get '/sign_in', to: 'sign_in#new'
  post '/sign_in', to: 'sign_in#create'

  get '/sign_out', to: 'sign_in#destroy'
  delete '/sign_out', to: 'sign_in#destroy'

  root 'welcome#index'
end

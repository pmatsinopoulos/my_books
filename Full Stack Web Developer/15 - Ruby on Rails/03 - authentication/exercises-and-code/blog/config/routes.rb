# File: config/routes.rb
#
Rails.application.routes.draw do
  resources :articles

  get '/sign_up', to: 'sign_up#new'
  post '/sign_up', to: 'sign_up#create'

  get '/sign_in', to: 'sign_in#new'
  post '/sign_in', to: 'sign_in#create'

  get '/sign_out', to: 'sign_in#destroy'
  delete '/sign_out', to: 'sign_in#destroy'

  root 'welcome#index'
end

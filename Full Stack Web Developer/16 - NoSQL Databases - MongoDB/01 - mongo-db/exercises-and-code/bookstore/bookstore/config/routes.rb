# File: config/routes.rb
#
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    member do
      post '/comments', to: 'comments#create'
    end
  end
end

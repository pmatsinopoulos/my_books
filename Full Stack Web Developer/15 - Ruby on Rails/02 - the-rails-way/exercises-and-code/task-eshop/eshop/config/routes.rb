Rails.application.routes.draw do
  resources :products

  root 'welcome#index'
end

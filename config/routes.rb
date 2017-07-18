Rails.application.routes.draw do
  resources :tickets
  resources :ticket_types
  devise_for :users
  resources :customers
  root to: redirect('/customers')
end

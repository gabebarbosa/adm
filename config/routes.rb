Rails.application.routes.draw do
  devise_for :users
  resources :customers
  root to: redirect('/customers')
end

Rails.application.routes.draw do
  resources :products
  get "users/list_users"
  root 'application#index'
end

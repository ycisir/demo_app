Rails.application.routes.draw do
  get "users/list_users"
  root 'application#index'
end

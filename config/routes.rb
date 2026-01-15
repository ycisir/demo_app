Rails.application.routes.draw do
  resources :products
  root 'application#index'
  get 'users/list_users'
  get 'users/show_new_template'
  get 'users/display_other_template'
end

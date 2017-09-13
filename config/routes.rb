Rails.application.routes.draw do
  # get 'home/index'
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'new_category', to: 'categories#new'
  post 'new_category', to: 'categories#create'
  delete 'delete_category', to: 'categories#destroy'
  get 'new_product', to: 'product#new'
  post 'new_product', to: 'product#create'
  delete 'delete_product', to: 'product#destroy'
  root 'home#index'
end

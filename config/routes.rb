Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :authors
  resources :books
  resources :posts
  resources :categories
  
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#index"
end

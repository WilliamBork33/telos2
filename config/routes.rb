Rails.application.routes.draw do
 

  
  #root 'welcome#index'
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  
  get 'sessions/new'

  get 'books/', to: 'books#index'
  get 'books/new', to: 'books#new'
  get 'books/show'

  get 'cart_items/index'
  get 'cart_items/show'
  get 'cart_items/new'
  get 'cart_items_create', to: 'cart_items#create'
  get 'cart_items/edit'
  get 'cart_items/update'
  get 'cart_items/destroy'

  get 'myCart', to: 'carts#index'
  get 'carts/show'
  get 'carts/new'
  get 'carts/create'
  get 'carts/destroy
  '
  
  resources :users
  resources :books
  resources :cart_items
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
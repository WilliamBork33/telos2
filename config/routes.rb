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
  get 'books/show', to: 'books#index'
  get 'books/show'

  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
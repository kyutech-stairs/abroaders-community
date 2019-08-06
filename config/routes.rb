Rails.application.routes.draw do
  resources :users, :only => [:index, :show, :create]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  resources :posts
  #get 'users/index'
  #get 'users/show'
  #get 'sessions/new'
  root 'static_pages#home'
  #root "users#index"
  get '/help',    to: 'static_pages#help'
  get  '/about',    to: 'static_pages#about'
  get '/search',  to: 'static_pages#search'

  #post '/signup',  to: 'users#new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'
  # get '/logout', to: 'static_pages#home'
  # resources :users

  # resources :users

  get '/posts', to: 'posts#show'
  post '/posts', to: 'posts#create'
end
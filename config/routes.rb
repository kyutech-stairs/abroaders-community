Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'sessions/new'
  # root 'static_pages#home'
  # get 'static_pages/home',    to: 'static_pages#home'
  get 'static_pages/help',    to: 'static_pages#help'
  get  'static_pages/about',    to: 'static_pages#about'
  post '/signup',  to: 'users#new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'static_pages#home'
  delete '/logout', to:'sessions#destroy'
  resources :users

end

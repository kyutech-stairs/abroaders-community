Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  get   '/signup', to: 'users#new'
  post  '/signup', to: 'users#create'

  get   '/signin', to: 'sessions#new'
  post  '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  resources :users, except: [:new, :create]
  resources :posts, except: [:index]
end

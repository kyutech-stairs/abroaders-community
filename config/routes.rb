Rails.application.routes.draw do
  # For details on the DSLq available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  get   '/signup', to: 'users#new'
  post  '/signup', to: 'users#create'

  get   '/signin', to: 'sessions#new'
  post  '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  get '/search' => 'posts#search', :as => 'search_page'
  get '/searchbypost' => 'posts#searchbypost', :as => 'searchbypost_page'
 

  # except は only の逆で、指定したアクション以外の全てのアクションに適用する
  resources :users, except: [:new, :create]
  resources :posts, except: [:index]

  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show, :index]
end

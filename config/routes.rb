Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  resources :articles

  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
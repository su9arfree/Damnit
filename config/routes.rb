Rails.application.routes.draw do
  get 'page/home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  root 'page#home'
  post '/page/home', to:'page#home'
  resources :users
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

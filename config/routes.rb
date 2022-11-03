Rails.application.routes.draw do
  resources :gossips do
  resources :comments, only: [:edit, :destroy, :new, :create, :update]
end

  resources :comments

  resources :users, only: [:show, :create,:new]
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]

  root 'sessions#new'

  get '/contact', to: 'contact#contact'
  get '/equipe', to: 'team#team'

  get '/welcome/:id', to: 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'
end

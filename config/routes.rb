Rails.application.routes.draw do
  resources :gossips
  resources :comments

  resources :users
  resources :cities
  resources :sessions

  root 'sessions#new'

  get '/contact', to: 'contact#contact'
  get '/equipe', to: 'team#team'

  get '/welcome/:id', to: 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'
end

Rails.application.routes.draw do
  resources :gossip
  resources :user
  resources :city
  resources :comment
 
  root 'gossip#index'

  get '/contact', to: 'contact#contact'
  get '/equipe', to: 'team#team'

  get '/welcome/:id', to: 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'
end

Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :users
  resources :projects
  resources :tickets
  resources :comments
  resources :project_histories
  get '/api/public', to: 'public#public'
  get '/api/private', to: 'private#private'
  get '/api/private-scoped', to: 'private#private_scoped'
end

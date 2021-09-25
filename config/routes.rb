Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :users
  resources :projects
  resources :tickets
  resources :comments
  resources :project_histories
end

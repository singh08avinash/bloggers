Rails.application.routes.draw do
  get 'welcomes/index'
  resources :comments
  resources :images
  resources :events
  resources :blogs_titles
  devise_for :users
  root to: "blogs_titles#index"
  resources :welcomes
  
end

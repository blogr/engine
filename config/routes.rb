Blogr::Engine.routes.draw do

  resources :posts
  resources :categories
  resources :tags
  resources :users
  resources :comments

  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  resources :sessions, only: [:index, :create]

  root to: "dashboard#index"

end
Rails.application.routes.draw do

  root 'books#index'

  get 'about', to: 'about#index'

  resources :books
  resources :authors
  resources :categories
  resources :publishers

end

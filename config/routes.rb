Rails.application.routes.draw do


  get 'addresses/new'
  resources :questions, only: [:new, :create]


  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  resources :kids
  root to: 'kids#top'
  
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

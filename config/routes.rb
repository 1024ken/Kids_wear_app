Rails.application.routes.draw do

  resources :feeds
  resources :children do
    collection do
      get :top_children_question
    end  
  end
  
  resources :color_children
  
  
  
  resources :addresses do
    collection do
      post :confirm
    end
  end  

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  resources :kids
  root to: 'kids#top'
  
  resource :charge
  
end

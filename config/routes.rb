Rails.application.routes.draw do

  devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations',
        omniauth_callbacks: "customers/omniauth_callbacks"
      }

  resources :contacts do
    collection do
      post :confirm
    end
  end

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

  # resources :sessions, only: [:new, :create, :destroy]
  # resources :users

  resources :kids
  root to: 'kids#top'
  resource :charge
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

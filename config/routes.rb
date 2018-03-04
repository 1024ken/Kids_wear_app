Rails.application.routes.draw do

  root to: 'kids#top'

  devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations',
        omniauth_callbacks: "customers/omniauth_callbacks"
      }

  resources :contacts, only: [ :new, :create] do
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

  resource :charge
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end

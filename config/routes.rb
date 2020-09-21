Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  authenticated :user do
    root to: 'problems#index', as: 'problems'
  end

  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'


  resources :users, only: [ :show ] do
    resources :profiles, only: [ :index ]
  end

  resources :problems, only: [ :index, :show, :new, :create ]  do
    resources :solutions, only: [ :new, :create ] do
      resources :pitches, only: [ :new, :create ]
    end

    collection do
      get :leaderboard
    end

    member do
      post 'upvote'
    end
  end

  resources :solutions, only: [ :index, :show ] do    
    collection do
      get :leaderboard
    end

    member do
      post 'upvote'
      post 'collaborate'
      patch 'collab_status'
    end
  end

  resources :pitches, only: [ :index, :show ] do
    collection do
      get :leaderboard
    end

    member do
      post 'upvote'
    end
  end

  resources :chatrooms, only: [ :index, :show ] do
    resources :messages, only: :create
  end
end

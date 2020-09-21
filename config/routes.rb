Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'problems#index', as: 'problems'
  end

  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'


  resources :users do
    resources :profiles, only: [ :index ]
  end

  resources :problems, only: [ :index, :show, :new, :create ]  do
    resources :solutions, only: [ :new, :create ] do
      resources :pitches, only: [ :new, :create ]
    end

    resources :comments, only: [ :create ], controller: "problem/comments"
    
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
end

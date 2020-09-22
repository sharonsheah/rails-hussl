Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, :controllers => {:registrations => "registrations"}

  authenticated :user do
    root to: 'problems#index', as: 'prob_root'
  end

  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'


  resources :users, only: [ :show ] do
    resources :profiles, only: [ :index ]
    resources :notifications, only: [ :index ]
  end

  resources :problems, only: [ :index, :show, :new, :create ]  do
    resources :solutions, only: [ :new, :create ] do
      resources :comments, only: [ :create ], controller: "solution/comments"
      
      resources :pitches, only: [ :new, :create ] do
      resources :comments, only: [ :create ], controller: "pitch/comments"
      end
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

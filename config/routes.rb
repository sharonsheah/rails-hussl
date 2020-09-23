Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  authenticated :user do
    root to: 'problems#index', as: 'prob_root'
  end

  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'


  resources :users, only: [ :show ] do
    resources :profiles, only: [ :index ]
    resources :notifications, only: [ :index ]
    resources :bookmarked_items, only: [ :index, :destroy ]
  end

  resources :problems, only: [ :index, :show, :new, :create ]  do
    resources :solutions, only: [ :new, :create ] do

      resources :comments, only: [ :create ], controller: "problem/solutions"

      resources :pitches, only: [ :new, :create ]
    end

    resources :comments, only: [ :create ], controller: "problem/comments"

    collection do
      get :leaderboard
    end

    member do
      post 'upvote'
      post 'bookmark'
      delete 'unbookmark'
    end
  end

  resources :solutions, only: [ :index, :show ] do
    collection do
      get :leaderboard
    end

    member do
      post 'upvote'
      post 'bookmark'
      delete 'unbookmark'
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

  resources :notifications, only: [ :index ] do
    collection do
      post :mark_as_read
    end
  end

end

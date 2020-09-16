Rails.application.routes.draw do
  # get 'solutions/index'
  # get 'solutions/show'
  # get 'solutions/new'
  # get 'solutions/create'
  devise_for :users
  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'

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

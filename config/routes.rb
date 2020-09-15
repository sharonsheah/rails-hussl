Rails.application.routes.draw do
  # get 'solutions/index'
  # get 'solutions/show'
  # get 'solutions/new'
  # get 'solutions/create'
  devise_for :users
  root to: 'pages#home'
  get 'styleguide', to: 'pages#styleguide'
  
  resources :solutions, only: [ :index, :show ]

  resources :problems, only: [ :index, :show, :new, :create ]  do
    collection do
      get :leaderboard
    end
      member do
        post 'upvote'
      end

    resources :solutions, only: [ :new, :create ] do
      collection do
        get :leaderboard
      end
        member do
          post 'upvote'
        end

      resources :pitches, only: [ :index, :show, :new, :create ] do
        collection do
          get :leaderboard
        end
      end
    end
  end
end

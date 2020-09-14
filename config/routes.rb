Rails.application.routes.draw do
  get 'solutions/index'
  get 'solutions/show'
  get 'solutions/new'
  get 'solutions/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :problems, only: [ :index, :show, :new, :create ]  do
    collection do
      get :leaderboard
    end

    resources :solutions, only: [ :index, :show, :new, :create ] do
      collection do
        get :leaderboard
      end

      resources :pitches, only: [ :index, :show, :new, :create ] do
        collection do
          get :leaderboard
        end
      end
    end

  end
end
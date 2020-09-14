Rails.application.routes.draw do
  get 'solutions/index'
  get 'solutions/show'
  get 'solutions/new'
  get 'solutions/create'
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
>>>>>>> 60f76e06ab08c25370a09d0cea397dbf95c68a22

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

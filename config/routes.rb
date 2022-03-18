Rails.application.routes.draw do
  root 'pages#index'

  namsescape :api do
    namsescape :v1 do
      resources :airlines, param: :slug
      resources :reviews, only: [:create, :destory]
    end
  end

  get '*path', to: 'pages#index', via: :all


end

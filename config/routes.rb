Rails.application.routes.draw do

  resources :microposts do
    resources :participations, only: [:create, :destroy]
  end
  
  resources :prefectures
  root to: 'pages#index'
  resources :sports
  devise_for :users
  # root 'application#hello'
  resources :users, only: [:index, :show]
  resources :blogs
  resources :teams

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

end
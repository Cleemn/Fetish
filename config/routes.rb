Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "users#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :matches, only: [:show, :index] do
    resources :messages, only: [:index, :create]
  end

 get "random", to: "users#random"

  resources :users do

    patch "accept"
    patch "decline"
    resources :criteria, only: [:index, :new, :create, :edit, :update]
    resources :user_fetishes, only: [:index, :new, :create, :destroy]
  end
end

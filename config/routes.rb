Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "users#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :matches, only: [:show] do
    patch "accept"
    put "decline"
    resources :messages, only: [:index, :create]
  end

  resources :users do
    get "random",
    on: :collection
    resources :criteria, only: [:index, :new, :create, :edit, :update]
    resources :user_fetishes, only: [:index, :new, :create, :edit, :update]
  end
end

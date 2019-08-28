Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :matches, only: [:show] do
    resources :messages, only: [:index, :create]
  end

  resources :users do
    get "random"
    get "admin"
    get "show_test"
    patch "accept"
    patch "decline"
#    on: :collection
    resources :criteria, only: [:new, :create, :update]
  end
end

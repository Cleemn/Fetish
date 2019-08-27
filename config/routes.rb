Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :matches, only: [:show] do
    patch "accept"
    put "decline"
    resources :messages, only: [:index, :create]

  resources :users do
    get "random",
    on: :collection

  end
end

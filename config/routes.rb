Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :messages, only: [:index, :create]
  # ce sera a nester dans matches une fois qu'on aura matches


  resources :users do
    get "random",
    on: :collection
  end
end

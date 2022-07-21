Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'

  resources :lots, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :bottles, only: [:index]
  # resources :compositions, only: [:index, :show]
end

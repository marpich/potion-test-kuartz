Rails.application.routes.draw do
  get 'compositions/index'
  get 'compositions/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lots, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :bottles, only: [:show, :index]
  resources :compositions, only: [:index, :show]
end

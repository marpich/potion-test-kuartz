Rails.application.routes.draw do
  get 'bottles/new'
  get 'bottles/create'
  get 'bottles/show'
  get 'bottles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lots
  resources :bottles, only: [:new, :create, :show, :index]
end

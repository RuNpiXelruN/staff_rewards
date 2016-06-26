Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create] do
    resources :comments, only: :create
  end
  root 'home#index'
end

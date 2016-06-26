Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  resources :comments do
      post 'like', to: 'likes#create'
    delete 'like', to: 'likes#destroy'
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create] do
    resources :comments, only: :create
  end
  root 'home#index'
end

Rails.application.routes.draw do
  devise_for :users 
  root to: 'objectives#index'
  resources :aggregates, only: [:index, :new, :create, :show]

  resources :objectives do
    resources :comments, only: [:create,:destroy]
  end
end

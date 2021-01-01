Rails.application.routes.draw do
  devise_for :users 
  root to: 'objectives#index'

  resources :aggregates, only: [:index, :new, :create, :show,:destroy]
  resources :groups, only: [:index, :new, :show,:create, :edit, :update]

  resources :objectives do
    resources :comments, only: [:create,:destroy]
    collection do
      get 'search'
    end
  end

  
end

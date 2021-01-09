Rails.application.routes.draw do
  resources :meetings
  devise_for :users 
  root to: 'objectives#index'

  resources :aggregates do
    collection do
      get 'search'
    end
  end

  resources :groups, only: [:index, :new, :show,:create, :edit, :update]

  resources :objectives do
    resources :comments, only: [:create,:destroy]
    collection do
      get 'search'
    end
  end

  
end

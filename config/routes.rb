Rails.application.routes.draw do
 
  devise_for :users, :controllers =>{
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/posswords'
  } 
  get "users/:id/show", to: "users#show", as: "user"
  get "users/index" => "users#index"
  

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  root to: 'objectives#top'
  get 'top' => 'objectives#top'
  resources :objectives do
    resources :comments, only: [:create,:destroy]
    collection do
      get 'search'
    end
  end


  resources :aggregates do
    collection do
      get 'search'
    end
  end

  resources :groups, only: [:index, :new, :show,:create, :edit, :update]
  resources :meetings
  

  
end

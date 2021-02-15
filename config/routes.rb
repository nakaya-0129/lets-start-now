Rails.application.routes.draw do
 
  devise_for :users, :controllers =>{
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/posswords'
  }  do
    get :favorites, on: :collection
  end

  get "users/:id/show", to: "users#show", as: "user"
  get "users/index" => "users#index"
  

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  root to: 'objectives#top'
  get 'top' => 'objectives#top'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destory', as: 'destory_like'
  resources :objectives do
    resources :comments, only: [:create,:destroy]
     post 'add' => 'favorites#create'
     delete '/add' => 'favorites#destroy'
    collection do
      get 'search'
    end
  end


  resources :aggregates do
    collection do
      get 'search'
    end
  end

  
  

  
end

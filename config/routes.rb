Rails.application.routes.draw do
  devise_for :users
  root to: 'objectives#index'
  resources :objectives, only: [:index,:new,:create]

end

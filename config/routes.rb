Rails.application.routes.draw do
  devise_for :users
  root to: 'objects#index'

end

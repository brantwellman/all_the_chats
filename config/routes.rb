Rails.application.routes.draw do
  mount ActionCable.server => 'cable'
  
  root 'users#index'

  resources :users, only: [:show, :index]
end

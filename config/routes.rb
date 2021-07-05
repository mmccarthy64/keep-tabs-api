Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  root to: 'static#home'
  resources :books do 
    resources :comments, only: [:new, :create, :index, :show]
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create, :show] do
    resources :books, only: [:show, :index]
  end
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  root to: 'static#home'
  resources :books do 
    resources :comments, only: [:new, :create, :index, :show]
  end
end

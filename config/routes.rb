Rails.application.routes.draw do
  root to: 'static#home'
  resources :books do 
    resources :comments, only: [:new, :create, :index, :show]
  end
end

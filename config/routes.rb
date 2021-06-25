Rails.application.routes.draw do
  # resources :comments
  resources :books do 
    resources :comments, only: [:new, :create, :index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

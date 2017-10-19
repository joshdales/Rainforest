Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

  resources :products do
    resources :reviews
  end

  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

end

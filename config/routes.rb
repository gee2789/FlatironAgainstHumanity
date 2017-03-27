Rails.application.routes.draw do
	get '/', to: 'application#index', as: 'root'
	get '/login', to: 'accounts#login', as: 'login'
  resources :activegames
<<<<<<< HEAD
<<<<<<< HEAD
  resources :accounts
  resources :games, only: [:new, :create, :show]
=======
=======

  resources :games, only: [:new, :create, :show]

>>>>>>> 0e0969f8063b3cc4bcd7f8114681b2d56bc7ecbd
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:create, :destroy]
<<<<<<< HEAD
>>>>>>> 3f7c400e0bdbdc75475e18452f7c79dfc9404019
=======
>>>>>>> 0e0969f8063b3cc4bcd7f8114681b2d56bc7ecbd
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

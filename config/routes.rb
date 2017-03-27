Rails.application.routes.draw do
	get '/', to: 'application#index', as: 'root'
	get '/login', to: 'accounts#login', as: 'login'
  resources :activegames
<<<<<<< HEAD
  resources :accounts
  resources :games, only: [:new, :create, :show]
=======
  resources :accounts, only: [:new, :create]
  resources :games
  resources :sessions, only: [:create, :destroy]
>>>>>>> 3f7c400e0bdbdc75475e18452f7c79dfc9404019
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

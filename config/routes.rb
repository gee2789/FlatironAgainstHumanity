Rails.application.routes.draw do
	get '/', to: 'application#index', as: 'root'
	get '/login', to: 'accounts#login', as: 'login'
  resources :activegames
  resources :accounts, only: [:new, :create]
  resources :games
  resources :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

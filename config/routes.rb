Rails.application.routes.draw do
	get '/', to: 'application#index', as: 'root'
	get '/login', to: 'accounts#login', as: 'login'
	delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :activegames
  resources :games, only: [:create, :show]
  resources :accounts, only: [:new, :create]
  resources :sessions, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

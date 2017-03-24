Rails.application.routes.draw do
  resources :activegames
  resources :accounts
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

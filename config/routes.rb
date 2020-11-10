Rails.application.routes.draw do
  resources :surveys, only: [:update]
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

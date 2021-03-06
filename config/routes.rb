Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/home', to: "users_controller#home"
  get 'users/profile'
  root 'users#home'
end

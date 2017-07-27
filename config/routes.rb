Rails.application.routes.draw do
  devise_for :users
  root 'courses#index'
  resources :courses, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
end

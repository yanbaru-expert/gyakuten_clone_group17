Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Topページ遷移
  root to: 'movies#index'

  resources :questions
  resources :solutions
  resources :aws
  resources :movies
  resources :lines
  resources :texts
end

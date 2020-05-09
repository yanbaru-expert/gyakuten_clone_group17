Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Topページ遷移
  root to: 'movies#index'
  resources :aws
  resources :movies
  resources :questions do
  resources :solutions
  end
  # post '/question/:id/solutions', to: 'solutions#create'
end

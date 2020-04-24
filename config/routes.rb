Rails.application.routes.draw do
  devise_for :users
  # Topページ遷移
  resources :movies
end

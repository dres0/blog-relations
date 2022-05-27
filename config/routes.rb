Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :posts
  resources :post_tags
  root "posts#index"
end

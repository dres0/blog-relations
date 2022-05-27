Rails.application.routes.draw do
  resources :tags
  resources :posts
  resources :post_tags
  root "posts#index"
end

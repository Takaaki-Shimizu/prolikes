Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :posts do
    resources :users
  end
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  get "users/:id/likes" => "users#likes"
end

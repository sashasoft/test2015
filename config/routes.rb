Rails.application.routes.draw do
  devise_for :users
  get 'posts/form'
  get 'posts/sum'
  
  resources :posts
  
  root 'posts#index'
  
  
end

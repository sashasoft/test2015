Rails.application.routes.draw do
 get 'posts/form'
  get 'posts/sum'
  
  resources :posts
  
  root 'posts#index'
  
  
end

# http://weblog.jamisbuck.org/2007/2/5/nesting-resources
Rails.application.routes.draw do
  resources :posts
  root 'posts#index'




end
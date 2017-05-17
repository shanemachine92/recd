Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recommendations


  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'fandoms', to: 'pages#fandoms'

  get 'OUAT-fics', to: "recommendations#OUAT"

  # get 'recommendations/:id/reviews', to: 'reviews#show'
  get 'recommendations/:id/reviews/create', to: 'reviews#create', as: 'create_review'
  get 'recommendations/:id/reviews/new', to: 'reviews#new', as: 'new_review'
  get 'recommendations/:id/reviews/edit', to: 'reviews#edit', as: 'edit_review'
  get 'recommendations/:id/reviews/update', to: 'reviews#update', as: 'update_review'
  get 'recommendations/:id/reviews/destroy', to: 'reviews#destroy', as: 'destroy_review'

  root to: 'pages#home'
end

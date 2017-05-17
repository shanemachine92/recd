Rails.application.routes.draw do

  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recommendations do
    resources :reviews
    # get 'reviews', to: 'reviews#create', via: [:post]
  end



  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'fandoms', to: 'pages#fandoms'

  get 'OUAT-fics', to: "recommendations#OUAT"

  root to: 'pages#home'
end

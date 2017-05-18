Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recommendations do
    resources :reviews
    # get 'reviews', to: 'reviews#create', via: [:post]
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end

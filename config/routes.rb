Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recommendations

  get 'Buffy-fics', to: 'fandoms#show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end

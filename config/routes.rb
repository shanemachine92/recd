Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :recommendations

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'fics', to: 'pages#fics'
  get 'da_news', to: 'pages#da_news'
  get 'faqs', to: 'pages#faqs'

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end

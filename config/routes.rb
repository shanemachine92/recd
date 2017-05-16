Rails.application.routes.draw do

  devise_for :users
  
  resources :recommendations
    get 'OUAT-fics', to: "recommendations#OUAT"
    get 'recommendations/:id/reviews', to: 'recommendations#reviews'
    get 'recommendations/:id/reviews/create', to: 'recommendations#reviews#create'
    get 'recommendations/:id/reviews/new', to: 'recommendations#reviews#new'
    get 'recommendations/:id/reviews/edit', to: 'recommendations#reviews#edit'
    get 'recommendations/:id/reviews/update', to: 'recommendations#reviews#update'
    get 'recommendations/:id/reviews/destroy', to: 'recommendations#reviews#destroy'


  root to: 'pages#home'
end

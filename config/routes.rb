Rails.application.routes.draw do
  resources :expenses
  resources :groups do
  member do
    post 'join'
    post 'leave'
  end
end
  devise_for :users
  root  'home#index'
  get 'about', to: 'home#about'
  get '/dashboard', to: 'dashboard#index', as: :dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

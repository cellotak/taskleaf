Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  namespace :admin do
    resources :users
  end

  root to: 'tasks#index'
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

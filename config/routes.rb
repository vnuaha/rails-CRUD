RailsProject::Application.routes.draw do
  root :to => 'welcome#index'
  
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  
  resources :microposts
  resources :businesses
  resources :admins
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end

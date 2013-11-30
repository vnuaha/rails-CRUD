RailsProject::Application.routes.draw do
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  resources :microposts
  resources :businesses
  resources :admins
  resources :users
  
  root :to => 'welcome#index'
  
  resources :sessions, only: [:new, :create, :destroy]
  #~ root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  #~ root  'static_pages#home'
  #~ match '/signup',  to: 'users#new',            via: 'get'
end

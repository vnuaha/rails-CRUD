RailsProject::Application.routes.draw do
  get "users/new"
  get "welcome/index"

  root :to => 'welcome#index'
 
  resources :businesses
  resources :admins
  
  resources :users
  
  resources :sessions, only: [:new, :create, :destroy]
  #~ root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  #~ root  'static_pages#home'
  #~ match '/signup',  to: 'users#new',            via: 'get'
end

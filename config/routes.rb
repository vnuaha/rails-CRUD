RailsProject::Application.routes.draw do
  get "users/new"
  get "welcome/index"

  root :to => 'welcome#index'
 
  resources :businesses
  resources :admins
  
  resources :users
  #~ root  'static_pages#home'
  #~ match '/signup',  to: 'users#new',            via: 'get'
end

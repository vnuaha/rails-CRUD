RailsProject::Application.routes.draw do
  get "welcome/index"

  root :to => 'welcome#index'
 
  resources :businesses
  resources :admins
end

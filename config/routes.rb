GymBuddyApp::Application.routes.draw do
  
  resources :clients, :users, :gyms, :sessions, :schedules 

  get '/site', to: 'site#index'
  
  root to: 'site#index'

  get '/signup', to: 'users#new'

  delete '/signout', to: 'sessions#destroy'
  
  get'/signin', to: 'sessions#new'
end

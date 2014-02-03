GymBuddyApp::Application.routes.draw do
  
  resources :clients, :users, :gyms, :sessions, :schedules 

  root to: 'site#index'

  get '/site/home', to: 'site#index'

  get '/site/contact', to: 'site#contact'

  get '/site/about', to: 'site#about'

  get '/signup', to: 'users#new'

  delete '/signout', to: 'sessions#destroy'
  
  get'/signin', to: 'sessions#new'
end

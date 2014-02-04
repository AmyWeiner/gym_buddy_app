GymBuddyApp::Application.routes.draw do
  
  resources :clients, :users, :gyms, :sessions, :schedules 

  root to: 'site#index'

  get '/site/home', to: 'site#index'

  get '/site/contact', to: 'site#contact', as: 'contact'

  get '/site/about', to: 'site#about', as: 'about'

  get '/signup', to: 'users#new'

  delete '/signout', to: 'sessions#destroy'
  
  get'/signin', to: 'sessions#new'

  get '/gyms/new', to: 'gyms#new'

  get '/schedules/new', to: 'schedules#new'

  delete '/gyms/:id', to: 'gyms#destroy', as: 'delete_gym'
end

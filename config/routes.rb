Rails.application.routes.draw do

  resources :users
  resources :animals
  # resources :locations

  match '/validate', to: 'users#validate', via: 'post'
  match '/dogs', to: 'animals#dogs', via: 'get'
  match '/cats', to: 'animals#cats', via: 'get'
  match '/logout', to: 'users#logout', via: 'delete'

  root "animals#index"

end

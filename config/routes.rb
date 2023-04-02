Rails.application.routes.draw do

  resources recipes: only: [:index, :create]
  
  # user signup
  post '/signup', to: 'users#create'

  # user auto-login
  get '/me', to: 'users#show'

  # user login
  post '/login', to: 'sessions#create'

  # user logout
  delete '/logout', to: 'sessions#destroy'
end

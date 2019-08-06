Rails.application.routes.draw do
  resources :users
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :test_fixtures
  resources :predictions
  resources :matches
  resources :user_leagues
  resources :teams
  resources :leagues
  resources :users, only: [:create]

  get '/alldata', to: 'alldata#merged_data'
  get '/run', to: 'matches#update_matches_from_api'

  post '/login', to: 'auth#create'
  get '/validate', to: 'auth#validate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :users
  post '/login', to: 'users#show'
end

Rails.application.routes.draw do
  resources :users
  post '/login', to: 'users#show'
  post 'rails/active_storage/direct_uploads', to: 'direct_uploads#create'
end

Rails.application.routes.draw do


  resources :messages, :announcements, :users, :carers, :educators
  post '/login', to:  'auth#create'
end

Rails.application.routes.draw do


  resources :messages, :announcements, :users, :carers, :educators
  post '/login', to:  'auth#create'
  post '/edlogin', to:  'auth#edcreate'
end

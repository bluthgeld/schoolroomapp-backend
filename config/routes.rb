Rails.application.routes.draw do

  resources :messages, :announcements, :users, :carers, :educators, :students, :sections

  post '/login', to:  'auth#create'
  post '/edlogin', to:  'auth#edcreate'
  get '/ann/:id', to: 'announcements#receiver'
  get 'ed_students/:id', to: 'educators#ed_students'

end

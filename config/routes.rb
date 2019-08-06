Rails.application.routes.draw do

  resources :messages, :conversations, :users, :carers, :educators

end

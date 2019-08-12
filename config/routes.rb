Rails.application.routes.draw do

  resources :messages, :announcements, :users, :carers, :educators

end

Rails.application.routes.draw do
  #index
  get '/restaurants', to: 'restaurants#index'
  #new
  get '/restaurants/new', to: 'restaurants#new', as: :new_task
  #create
  post '/restaurants', to: 'restaurants#create', as: :create_task
  #edit
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_task
  #show
  get '/restaurants/:id', to: 'restaurants#show', as: 
  #update
  patch  '/restaurants/:id', to: 'restaurants#update'
  #delete
  delete '/restaurants/:id', to: 'restaurants#destroy'
end

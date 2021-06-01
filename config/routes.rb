Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # See all tasks
  get '/tasks', to: 'tasks#index'

  # Create a restaurant - 2 routes
  # Get the form to fill in the restaurant info
  get '/task/new', to: 'tasks#new', as: :new
  # Receives the restaurant details and stores it in the DB
  post '/tasks', to: 'tasks#create'

  # See show
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update a restaurant - 2 routes
  # Get the form to change the restaurant info
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  # Receive the restaurant new details and update it in the DB
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy a restaurant
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete
end

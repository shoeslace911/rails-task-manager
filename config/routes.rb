Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"
  # root "articles#index"
  get '/tasks', to: 'tasks#index', as: :tasks
  # Create
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # Read
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # it knows it exists
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root
  get "index", to: "tasks#index",  as: :index
  get "tasks/new", to: "tasks#new", as: :new
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  delete "tasks/:id", to: "tasks#destroy", as: :destroy
  patch "tasks/:id", to:"tasks#update", as: :update
end

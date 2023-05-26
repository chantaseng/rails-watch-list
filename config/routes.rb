Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create]
  # root to: "lists#home"
  # Read all
  # get "lists", to: "lists#index"
  # Read one
  # get "lists/:id", to: "lists#show", as: :list
end

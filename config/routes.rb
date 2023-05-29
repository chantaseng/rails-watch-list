Rails.application.routes.draw do
  # get 'bookmarks/new'
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # Very important the order of resources!!! show route has to be after new for it to work
  # Read all
  # get "lists", to: "lists#index"
  # Read one
  # get "lists/:id", to: "lists#show", as: :list
end

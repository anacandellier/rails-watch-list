Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # # A user can see all the lists
  # get "lists", to: "lists#index"
  # # A user can create a new list
  # get "lists/new", to: 'lists#new'
  # post "lists", to: "lists#create"
  # # A user can see the details of a given list and its name
  # get "lists/:id", to: "lists#show", as: "show_list", do
  #   get 'bookmarks/new', to: "bookmarks#new"
  #   post "bookmarks", to: "bookmarks#create"
  # end
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'

 resources :lists, only: [:index, :new, :create, :show] do
  resources :bookmarks, only: [:create]
 end
 resources :bookmarks, only: [:destroy]
end

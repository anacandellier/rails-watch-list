Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"


 resources :lists, only: [:index, :new, :create, :show] do
  resources :bookmarks, only: [:create]
 end
 resources :bookmarks, only: [:destroy]
end

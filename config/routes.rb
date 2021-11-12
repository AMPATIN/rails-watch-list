Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A user, can see all his movie lists (landing page)
  # A user can see the details of a given list and its name
  # A user can create a new list
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create]

  # A user can add a new bookmark (movie/list pair) to an existing list
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  # A user can delete a bookmark from a list
  resources :bookmarks, only: [:destroy]
end

Rails.application.routes.draw do
  # Define your application routes per the
  # DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'bookmarks/index'
  # get 'bookmarks/new'
  # get 'bookmarks/destroy'

  # resources :lists, only: %i[index new create show] do
  #   resources :bookmarks, only: %i[new create]
  # end

  # resources :bookmarks, only: %i[destroy]
  root to: 'lists#index'
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]

end

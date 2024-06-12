Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks

  get 'login', to: 'sessions#new', as: 'new_session'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  get 'signup', to: 'users#new', as: 'new_user'

  get 'user/:id', to: 'users#show', as: 'user'

  get 'user/:id/edit', to: 'users#edit', as: 'edit_user'

  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'

  resources :users, only: [:create, :update, :destroy]
end


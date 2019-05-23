Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  # get    'cocktails',          to: 'cocktails#index'
  # get    'cocktails/new',      to: 'cocktails#new'
  # post   'cocktails',          to: 'cocktails#create'
  # get    'cocktails/:id',      to: 'cocktails#show'
  # get    'cocktails/:id/edit', to: 'cocktails#edit'
  # put    'cocktails/:id',      to: 'cocktails#update'
  # delete 'cocktails/:id',      to: 'cocktails#destroy'

  # get    'ingredients',          to: 'ingredients#index'
  # get    'ingredients/new',      to: 'ingredients#new'
  # post   'ingredients',          to: 'ingredients#create'
  # get    'ingredients/:id',      to: 'ingredients#show'
  # get    'ingredients/:id/edit', to: 'ingredients#edit'
  # put    'ingredients/:id',      to: 'ingredients#update'
  # delete 'ingredients/:id',      to: 'ingredients#destroy'
end

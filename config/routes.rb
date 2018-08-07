Rails.application.routes.draw do

  # Create
  get 'pets/new', to: 'pets#new'
  post 'pets', to: 'pets#create'

  # Read
  get 'pets/:id', to: 'pets#show', as: :pet
  get 'pets', to: 'pets#index'

  # Update
  get 'pets/:id/edit', to: 'pets#edit', as: :pet_edit
  patch 'pets/:id', to: 'pets#update'

  # Delete/Destroy
  delete 'pets/:id', to: 'pets#destroy'

  root to: 'pets#index'
end

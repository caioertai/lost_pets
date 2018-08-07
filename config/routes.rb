Rails.application.routes.draw do
  get 'pets', to: 'pets#index'

  root to: 'pets#index'
end

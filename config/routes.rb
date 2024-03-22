Rails.application.routes.draw do
  get 'artists/index'
  devise_for :users
  root to: "pages#home"
  resources :profiles, except: %i[index destroy]
  delete '/profiles/:id', to: 'profiles#destroy', as: :delete_profile
  resources :selected_artists, only: %i[new create]
  resources :artists, only: :index
end

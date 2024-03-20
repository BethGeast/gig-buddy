Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :profiles, except: %i[index destroy]
  delete '/profiles/:id', to: 'profiles#destroy', as: :delete_profile
  resources :selected_artists, only: %i[new create]
  resources :selected_languages, only: %i[new create]
  resources :matches, only: :index
end

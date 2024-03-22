Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :profiles, except: %i[index destroy] do
    resources :matches, only: %i[create show]
  end
  resources :matches, only: [] do
    resources :messages, only: :create
  end
  delete '/profiles/:id', to: 'profiles#destroy', as: :delete_profile
  resources :selected_artists, only: %i[new create]
  resources :selected_languages, only: %i[new create]
  resources :matches, only: %i[index destroy]
end

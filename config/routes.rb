Rails.application.routes.draw do
  get 'artists/index'
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
  resources :artists, only: :index
  resources :selected_languages, only: %i[new create]
  resources :matches, only: %i[index destroy]
  resources :swiper, only: :index
end

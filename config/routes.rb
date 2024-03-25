Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :profiles, except: %i[index] do
    resources :matches, only: %i[create]
  end
  resources :matches, only: [] do
    resources :messages, only: :create
  end
  # delete '/profiles/:id', to: 'profiles#destroy', as: :delete_profile
  resources :selected_artists, only: %i[new create]
  resources :artists, only: :index
  resources :selected_languages, only: %i[new create]
  resources :matches, only: %i[index destroy show]
  resources :swiper, only: :index
end

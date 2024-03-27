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
  resources :selected_artists, only: %i[new create index]
  resources :artists, only: %i[index create]
  resources :selected_languages, only: %i[new create]
  resources :matches, only: %i[index show]
  delete '/matches/:id', to: 'matches#destroy', as: :delete_match
  resources :swiper, only: :index
end

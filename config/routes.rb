Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :selected_artists, only: [:new, :create]
end

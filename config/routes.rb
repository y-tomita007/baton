Rails.application.routes.draw do
  resources :licenses, only: %i[index create]
  resources :downloads, only: :index
end

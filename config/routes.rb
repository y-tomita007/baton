Rails.application.routes.draw do
  resources :licenses, only: %i[index create]
end

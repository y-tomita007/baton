Rails.application.routes.draw do
  resources :licenses, only: %i[index create]
  resources :downloads, only: :index do
    collection do
      get :download
    end
  end
end

Rails.application.routes.draw do
  resources :registrations, only: %i[index create]
  resources :downloads, only: :index do
    collection do
      get :download
    end
  end
end

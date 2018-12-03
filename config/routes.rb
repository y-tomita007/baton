Rails.application.routes.draw do
  resource :registration, only: %i[new create]
  resources :downloads, only: :index do
    collection do
      get :download
    end
  end
end

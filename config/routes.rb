Rails.application.routes.draw do
  resource :registration, only: %i[new create]
  resource :installer, only: :show do
    collection do
      get :download
    end
  end
end

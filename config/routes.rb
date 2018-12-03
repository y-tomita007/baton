Rails.application.routes.draw do
  namespace :registration do
    resource :company, only: %i[new create]
    resource :installer, only: :show do
      collection do
        get :download
      end
    end
  end
end

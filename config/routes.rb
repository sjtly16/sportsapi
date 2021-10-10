Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :matches, only: %i[index show]
      resources :teams
    end
  end
end

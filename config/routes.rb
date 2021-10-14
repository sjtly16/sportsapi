Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :matches, only: %i[index show]
      resources :teams, only: [:show]
      resources :match_stat do
        collection do
          get 'match_between_team'
        end
      end
    end
  end
end

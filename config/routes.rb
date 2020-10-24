Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    scope :v1 do
      resources :users, only: :index
    end
  end
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
end

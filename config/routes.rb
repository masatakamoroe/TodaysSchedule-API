Rails.application.routes.draw do
  devise_for :users
  namespace :api do
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
  # app/api/api.rbをマウント
  mount Api::Root => '/'
end

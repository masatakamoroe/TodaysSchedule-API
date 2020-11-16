Rails.application.routes.draw do
  devise_for :users
    mount_devise_token_auth_for 'Calendar', at: '/calendars'
    mount API => '/api'

  end

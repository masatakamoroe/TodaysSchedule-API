class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  skip_before_action :verify_authenticity_token, raise: false
  #if: :devise_controller? # APIではCSRFチェックをしない
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
end
